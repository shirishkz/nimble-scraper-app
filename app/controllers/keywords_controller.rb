class KeywordsController < ApplicationController
  before_action :set_keyword, only: %i[show edit update destroy]

  def index
    @keywords = Keyword.all.sort_by(&:updated_at)
  end

  def show
    page = Nokogiri::HTML(open("https://www.google.com/search?q=#{CGI.escape(@keyword.query)}"))
    url_list = page.css('cite')
    @url_adword_top = url_list.take(@keyword.adword_sum)
    @url_non_adword = url_list.drop(@keyword.adword_sum)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @keyword.update(keyword_params)
        format.html { redirect_to @keyword }
        format.json { head :no_content }
        flash[:info] = 'Query was successfully updated.'
      else
        format.html { render action: 'edit' }
        format.json { render json: @keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @keyword.destroy
    respond_to do |format|
      format.html { redirect_to keywords_url }
      format.json { head :no_content }
      flash[:info] = 'Query was successfully destroyed.'
    end
  end

  # Import CSV to db
  def import
    begin
      Keyword.import(params[:file])
      flash[:success] = 'Query terms imported.'
    rescue
      flash[:warning] = 'Invalid CSV file format.'
    end
    redirect_to root_url
  end

  private
  def set_keyword
    @keyword = Keyword.find(params[:id])
  end

  def keyword_params
    params.require(:keyword).permit(:query)
  end
end

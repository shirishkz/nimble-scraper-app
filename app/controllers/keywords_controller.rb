class KeywordsController < ApplicationController
  before_action :set_keyword, only: [:show]

  # GET /keywords
  # GET /keywords.json
  def index
    @keywords = Keyword.all.sort_by(&:id)
  end

  # GET /keywords/1
  # GET /keywords/1.json
  def show
    page = Nokogiri::HTML(open("https://www.google.com/search?q=#{CGI.escape(@keyword.query)}"))
    url_list = page.css('cite')
    @url_adword_top = url_list.take(@keyword.adword_sum)
    @url_non_adword = url_list.drop(@keyword.adword_sum)
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
  # Use callbacks to share common setup or constraints between actions.
  def set_keyword
    @keyword = Keyword.find(params[:id])
  end
end

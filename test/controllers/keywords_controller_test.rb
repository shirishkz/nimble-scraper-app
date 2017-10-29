require 'test_helper'

class KeywordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keyword = keywords(:one)
  end

  test 'should get index' do
    get keywords_url
    assert_response :success
    assert_not_nil assigns(:keywords)
  end

  test "should import CSV file" do
    csv_rows = <<-eos
    ladaza
    11street
    ebay
    eos

    file = Tempfile.new('new_keywords.csv')
    file.write(csv_rows)
    file.rewind

    assert_difference "Keyword.count", 3 do
      post :csv_import, :file => Rack::Test::UploadedFile.new(file, 'text/csv')
    end

    assert_redirected_to root_url
    assert_equal 'Query terms imported.', flash[:success]
  end

  test 'should show keyword' do
    get keyword_url(@keyword)
    assert_response :success
  end

  test 'should get edit' do
    get edit_keyword_url(@keyword)
    assert_response :success
  end

  test 'should update keyword' do
    patch keyword_url(@keyword), params: { keyword: { adword_bottom: @keyword.adword_bottom, adword_sum: @keyword.adword_sum, adword_top: @keyword.adword_top, non_adwords_sum: @keyword.non_adwords_sum, query: @keyword.query, search_total: @keyword.search_total, total_links: @keyword.total_links } }
    assert_redirected_to keyword_url(@keyword)
  end

  test 'should validate keyword on update' do
    patch keyword_url(@keyword), params: { keyword: { query: keywords(:two).query } }
    assert_response :success
    assert_template 'edit'
    assert_select 'li', 'Keyword has already been taken'
  end

  test 'should destroy keyword' do
    assert_difference('Keyword.count', -1) do
      delete keyword_url(@keyword)
    end

    assert_redirected_to keywords_url
  end
end

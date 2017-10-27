require 'test_helper'

class KeywordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keyword = keywords(:one)
  end

  test "should get index" do
    get keywords_url
    assert_response :success
    assert_not_nil assigns(:keywords)
  end

  # test "should import CSV file" do
  #   csv_rows = <<-eos
  #   ladaza
  #   11street
  #   ebay
  #   eos
  #
  #   file = Tempfile.new('new_keywords.csv')
  #   file.write(csv_rows)
  #   file.rewind
  #
  #   assert_difference "Keyword.count", 3 do
  #     post :csv_import, :file => Rack::Test::UploadedFile.new(file, 'text/csv')
  #   end
  #
  #   assert_redirected_to root_url
  #   assert_equal 'Query terms imported.', flash[:success]
  # end

  test "should show keyword" do
    get keyword_url(@keyword)
    assert_response :success
  end
end

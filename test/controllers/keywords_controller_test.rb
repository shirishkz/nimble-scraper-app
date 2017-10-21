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

  test "should import CSV" do

  end

  test "should show keyword" do
    get keyword_url(@keyword)
    assert_response :success
  end
end

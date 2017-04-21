require 'test_helper'

class EnglishControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get english_index_url
    assert_response :success
  end

end

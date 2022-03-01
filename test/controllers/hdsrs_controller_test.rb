require 'test_helper'

class HdsrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hdsrs_index_url
    assert_response :success
  end

  test "should get create" do
    get hdsrs_create_url
    assert_response :success
  end

end

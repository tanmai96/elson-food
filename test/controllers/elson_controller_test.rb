require 'test_helper'

class ElsonControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get elson_home_url
    assert_response :success
  end

end

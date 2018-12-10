require 'test_helper'

class Pictures1ControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get pictures1_destroy_url
    assert_response :success
  end

end

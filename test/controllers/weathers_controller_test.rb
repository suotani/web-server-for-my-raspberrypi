require 'test_helper'

class WeathersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get weathers_show_url
    assert_response :success
  end

end

require 'test_helper'

class PhotoControllerTest < ActionDispatch::IntegrationTest
  test "should get uploader" do
    get photo_uploader_url
    assert_response :success
  end

end

require 'test_helper'

class CollectionControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get collection_show_url
    assert_response :success
  end

end

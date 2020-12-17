require 'test_helper'

class ShowAllControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_all_index_url
    assert_response :success
  end

end

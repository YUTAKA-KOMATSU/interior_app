require 'test_helper'

class InteriorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interiors_index_url
    assert_response :success
  end

end

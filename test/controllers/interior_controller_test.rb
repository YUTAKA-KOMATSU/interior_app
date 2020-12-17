require 'test_helper'

class InteriorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interior_index_url
    assert_response :success
  end

end

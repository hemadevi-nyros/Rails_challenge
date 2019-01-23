require 'test_helper'

class FoodfieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foodfie_index_url
    assert_response :success
  end

end

require 'test_helper'

class DishControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dish_index_url
    assert_response :success
  end

end

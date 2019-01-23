require 'test_helper'

class DishesRestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dishes_restaurants_index_url
    assert_response :success
  end

end

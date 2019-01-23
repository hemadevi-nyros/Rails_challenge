class DishesController < ApplicationController
  def index
  	@dishes = Dish.all
    @restaurants = Restaurant.all
  end

  def show
  	@dish = Dish.find(params[:id])
  end
  
  def search
    @dishes = Dish.search(params[:search])
    @all_dishes_count = @dishes.count :all
    if params[:filter]
      @dishes = Dish.order(params[:filter])
    elsif params[:rating]
      @dishes= Dish.where('rating > ? ', params[:rating] )
    elsif params[:tags]
      @dishes = Dish.where('tag_id LIKE ?',params[:tags])
    elsif params[:min_rangefilter] and params[:max_rangefilter]
      @dishes =  Dish.where('price BETWEEN ? AND ?', params[:min_rangefilter], params[:max_rangefilter])
    end
    respond_to do |format|
     format.js
     format.html
    end
  end
  
  private
  
  def dish_params
     params.require(:dish).permit(:name, :price, :image, :rating, :search, :restaurant_name, :restaurant_id, :restaurant_address )
  end
end
 
require 'rails_helper'

RSpec.describe DishesController, type: :controller do
  context 'GET #index' do
 	 it 'returns a success response' do
 		 get :index
 		 expect(response).to be_success 
 	 end
  end
  context 'GET #search' do
 	 it 'returns a success response' do
 	 	 get :search
 	 	 expect(response).to be_success
 	 end
  end
  describe 'GET#index' do
   it "renders the :index view" do
  	 get :index
  	 expect(response).to render_template :index
   end
  end
  describe 'GET #search' do
   it "renders dishes search page" do
  	 get :search
  	 expect(response).to render_template :search
   end
  end
end
 

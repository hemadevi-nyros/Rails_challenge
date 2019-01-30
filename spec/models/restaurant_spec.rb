require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context 'validation tests' do
  	it 'ensures name presence' do
  	  restaurant = Restaurant.create(address:'Address').save
  	  expect(restaurant).to eq(false)
  	end

  	it 'ensures address presence' do
  	  restaurant = Restaurant.create(name:'Name').save
  	  expect(restaurant).to eq(false)
  	end

  	it 'should save successfully' do
  		restaurant = Restaurant.create(name:'Name', address:'Address').save
  		expect(restaurant).to eq(true)
  	end
  end
end

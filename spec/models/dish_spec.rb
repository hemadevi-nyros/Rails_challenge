require 'rails_helper'

RSpec.describe Dish, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      dish = Dish.new(price: 100, rating: 8, tag_id: 3, image_file_name: "sample.jpeg", image_content_type: "image/jpeg", image_file_size: 00000).save
      expect(dish).to eq(false)
    end

    it 'ensures rating presence' do
      dish = Dish.new(name: 'Name', price: 100, tag_id: 3, image_file_name: "sample.jpeg", image_content_type: "image/jpeg", image_file_size: 00000).save
      expect(dish).to eq(false)
    end

    it 'ensures price presence' do
      dish = Dish.new(name: 'Name', rating: 8, tag_id: 3, image_file_name: "sample.jpeg", image_content_type: "image/jpeg", image_file_size: 00000).save
      expect(dish).to eq(false)
    end

    it 'ensures tag_id presence' do
      dish = Dish.new(name: 'Name', rating: 8, price: 100, image_file_name: "sample.jpeg", image_content_type: "image/jpeg", image_file_size: 00000).save
      expect(dish).to eq(false)
    end

    it 'ensures image_file_name presence' do
      dish = Dish.new(name: 'Name', rating: 8, price: 100, image_content_type: "image/jpeg", image_file_size: 00000).save
      expect(dish).to eq(false)
    end
    
    it 'ensures image_content_type presence' do
      dish = Dish.new(name: 'Name', rating: 8, price: 100, image_file_name: "sample.jpeg", image_file_size: 00000).save
      expect(dish).to eq(false)
    end

    it 'ensures image_file_size presence' do
      dish = Dish.new(name: 'Name', rating: 8, price: 100, image_file_name: "sample.jpeg", image_content_type: "image/jpeg").save
      expect(dish).to eq(false)
    end

    it 'should save successfully' do
      dish = Dish.new(name: 'Name', price: 100, rating: 8, tag_id: 3, image_file_name: "sample.jpeg", image_content_type: "image/jpeg", image_file_size: 00000).save
      expect(dish).to eq(true)
    end
  end
end

class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :image, :shipping, :weight
end

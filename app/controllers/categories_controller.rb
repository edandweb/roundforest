class CategoriesController < ApplicationController
  def index
    @products_images = Product.joins(:category).select('MAX(products.score), products.image, products.category_id, categories.name, products.image, products.score').group(:category_id).order('categories.name asc').all
  end
end

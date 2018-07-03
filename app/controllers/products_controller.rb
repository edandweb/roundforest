class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @products = @category.product.order('score desc')
  end
end

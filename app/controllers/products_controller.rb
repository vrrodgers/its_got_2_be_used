class ProductsController < ApplicationController

  def index
  end

  def show
    @product = Product.find(1)
    @products = Product.all
    p '#################################'
    puts @products[0].name
  end
end
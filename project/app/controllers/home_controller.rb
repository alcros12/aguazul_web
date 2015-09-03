class HomeController < ApplicationController
  def index
  end
  
  def catalogo
    @products = Product.all
    @categories = Category.all
  end
end

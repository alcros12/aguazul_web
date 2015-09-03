class HomeController < ApplicationController
  def index
  end
  
  def catalogo
    @products = Product.all
  end
end

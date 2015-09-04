class HomeController < ApplicationController
  def index
  end
  
  def catalogo
    @categories = Category.all
    @products = Product.all
  end
  
  def search_product
    @products = Product.where(name: params[:searchBar])
    if(@products == nil)
      @products = nil
      logger.info "Estoy vacio"
      redirect_to '/catalogo'
    else
      logger.info "Estoy lleno"
      redirect_to '/catalogo'
    end 
  end
  
end

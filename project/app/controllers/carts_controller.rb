class CartsController < ApplicationController
  def show
    @order_articles = current_order.order_articles
  end
end

class OrderArticlesController < ApplicationController

  def create
    @order = current_order
    @order_article = @order.order_articles.new(order_article_params)
    @order.save
    session[:order_id] = @order.id
    
  end

  def update
    @order = current_order
    @order_article = @order.order_articles.find(params[:id])
    @order_article.update_attributes(order_article_params)
    @order_articles = @order.order_articles
  end

  def destroy
    @order = current_order
    @order_article = @order.order_articles.find(params[:id])
    @order_article.destroy
    @order_articles = @order.order_articles
  end
private
  def order_article_params
    params.require(:order_article).permit(:quantity, :product_id)
  end
end

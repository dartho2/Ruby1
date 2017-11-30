class BasketDetailController < ApplicationController
  def index
    @basket_detail = Basket.all
    @basket_detail = Product.all
    @basket_detail = BasketDetail.all
    @basket_detail = @basket_detail.joins(:basket)
    @basket_detail = @basket_detail.joins(:product)
  end
  def show
    @basket_detail = BasketDetail.new
  end
end

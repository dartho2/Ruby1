class BasketController < ApplicationController
  def index
  @baskets = Basket.all
  end
  def new
    @baskets = Basket.new
  end

end


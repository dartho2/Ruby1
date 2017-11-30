class BasketController < ApplicationController
  def index
  @baskets = Basket.all
  end

end


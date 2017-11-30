class BasketDetailController < ApplicationController
  def index
    @basket_detail = BasketDetail.all
  end

  def show
    @basket_detail = BasketDetail.new
  end

  def new
    @basket_detail = BasketDetail.new
  end

  def create
      @basket_detail = BasketDetail.new(basketdetail_params)

      if @basket_detail.save
        redirect_to @basket_detail
      else
        render 'new'
      end
  end


  private
  def basketdetail_params
    params.require(:basket_detail).permit(:product_id, :basket_id)

  end


end

class BasketDetailController < ApplicationController
  def index
    @basket_detail = BasketDetail.all
  end

  def show
    @basket_detail = BasketDetail.new
  end
  def edit
    @basket_detail = BasketDetail.find(params[:id])
  end

  def new
    @basket_detail = BasketDetail.new
    @product_detail = Product.new
    @basket = Basket.new
  end

  def create
    @product_detail = Product.new(b_params)
    @basket = Basket.new(a_params)

        if @basket.save && @product_detail.save
              @b = @basket.id
              @a = @product_detail.id
              @basket_detail = BasketDetail.new(basket_id: @b, product_id: @a)

          if @basket_detail.save
                redirect_to basket_detail_index_path , notice: "Dodano FAKTURE"
            else
              render 'new', notice: 'Bład zapisu basket_details'
          end

        else
        render 'new', notice: 'Bład zapisu Product/Basket'
        end


    end



  private
  def a_params
    params.require(:basket).permit(:id, :basket_fv, :total_price)
  end
  def b_params
    params.require(:product).permit(:id, :name_product, :brutto_price)
  end
  def c_params
    params.require(@basket_detail).permit(:id, :product_id, :basket_id)
  end


end

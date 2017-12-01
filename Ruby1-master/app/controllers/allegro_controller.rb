class AllegroController < ApplicationController
  def index
    @allegro = Allegro.all
  end

  def new
    @allegro = Allegro.new
  end

  def edit
    @allegro = Allegro.find(params[:id])
  end

  def show
    @allegro = Allegro.find(params[:id])
  end


  def create
    @allegro = Allegro.new(allegro_params)

    if @allegro.save
      redirect_to @allegro
    else
      render 'new'
    end
  end

  def update
    @allegro = Allegro.find(params[:id])

    if @allegro.update(allegro_params)
      render 'edit'
    else
      render 'edit'
    end
  end

  def destroy
    @allegro = Allegro.find(params[:id])
    if  @allegro.destroy

    redirect_to allegro_index_path
    else
      render 'index'
    end
  end

  private
  def allegro_params
    params.require(:allegro).permit(:fv, :name, :product, :cost)
  end
end



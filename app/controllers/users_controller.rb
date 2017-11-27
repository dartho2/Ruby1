class UsersController < ApplicationController
  def new
    @users = User.new
  end
  def login
  end
  def show
    @users = User.find(params[:id])

  end
  def index
  end
  def create
    @users = User.new(user_params)
    if @users.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @users
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end

class UsersController < ApplicationController
  def home
  end

  def login
    
  end

  def signup
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    # @user = User.new(params[:user]) # Not the final implementation!
    #updated strong param
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
      def user_params
        params.require(:user).permit(:name, :email, :password,:password_confirmation)
      end
end

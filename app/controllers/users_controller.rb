class UsersController < ApplicationController
before_action :authorize_user, only: :show
  def index
  @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user(@user)
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      render new_user_path
    end
  end

  def show
    if params[:id] == "sign_out"
      sign_out current_user
      redirect_to root_path
      return
    end
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:email, :wins, :losses ,:stats, :last_game, :password)
  end

  def authorize_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user == @user
    end
end

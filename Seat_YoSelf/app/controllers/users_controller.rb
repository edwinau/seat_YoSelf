class UsersController < ApplicationController
# create , new, edit, show, update, destroy
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to restaurants_url
      else
        render :new
      end

  end

  def update
    @user = current_user
      if @user.update_attributes(user_params)
        redirect_to restaurants_url
      else
        render :edit
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to restaurants_url
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end

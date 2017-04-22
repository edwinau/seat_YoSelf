class UsersController < ApplicationController
# create , new, edit, show, update, destroy
  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to new_session_url
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
    @user = current_user
    @user.destroy
    redirect_to restaurants_url
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end

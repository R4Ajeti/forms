# frozen_string_literal: true

class UsersController < ApplicationController
  def new; end

  def index; end

  def create
    puts "create controler works! #{user_params}"
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

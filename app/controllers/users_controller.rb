class UsersController < ApplicationController
  
  def new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end

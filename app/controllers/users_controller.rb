class UsersController < ApplicationController
  def index
  end
  
  def show
    @user = User.find(params[:id])
    @myinterior = @user.myinteriors
  end
end

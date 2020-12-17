class MyinteriorsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]
  def index
    @myinteriors = Myinterior.includes(:user).order("created_at DESC").limit(5)
  end

  def new
    @myinterior = Myinterior.new
  end

  def create
    @myinterior = Myinterior.create(myinterior_params)
    if @myinterior.save
      redirect_to myinteriors_path
    else
      render :new
    end
  end

  def show
    @myinterior = Myinterior.find(params[:id])
    @comment = Comment.new
    @comments = @myinterior.comments.includes(:user)
  end

  def edit
    @myinterior = Myinterior.find(params[:id])
  end

  def update
    myinterior = Myinterior.find(params[:id])
    if myinterior.update(myinterior_params)
      redirect_to myinterior_path
    else
      @myinterior = Myinterior.find(params[:id])
      render :edit
    end
  end

  def destroy
    myinterior = Myinterior.find(params[:id])
    myinterior.destroy
    redirect_to action: :index
  end

  private

  def myinterior_params
    params.require(:myinterior).permit(:title, :concept, :category_id, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    @myinterior = Myinterior.find(params[:id])
    unless @myinterior.user.id == current_user.id
      redirect_to action: :index
    end
  end
end

class ShowAllController < ApplicationController
  def index
    @myinterior = Myinterior.includes(:user).order("created_at DESC")
  end
end

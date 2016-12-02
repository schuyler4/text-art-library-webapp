class ArtController < ApplicationController
  before_action :require_login, only: [:create, :vote_up, :vote_down, :new]

  def index
    @art = Art.all
    if params[:search] != ''
      if params[:search]
        @art = Art.search(params[:search]).order("created_at DESC")
      else
        @art = Art.all
      end
    end
  end

  def show
    @art = Art.find(params[:id])
    puts @art.user.first_name
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_param)
    @art.user = current_user

    if @art.save
      redirect_to @art
    else
      render 'new'
    end
  end

  def vote_up
    @art = Art.find(params[:id])
    @art.rating += 1
    @art.save

    redirect_to @art
  end

  def vote_down
    @art = Art.find(params[:id])
    @art.rating -= 1
    @art.save

    redirect_to @art
  end

  private
    def art_param
      params.require(:art).permit(:title, :text, :rating)
    end
end

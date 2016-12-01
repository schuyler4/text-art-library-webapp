class ArtController < ApplicationController
  before_action :require_login, only: [:create, :vote_up, :vote_down, :new]

  def index
    @art = Art.order('rating').limit(20)
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    puts "panda"
    puts current_user
    puts "panda"

    @art = Art.new(art_param)
    @art.user = current_user
    @art.user_name = current_user.first_name

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

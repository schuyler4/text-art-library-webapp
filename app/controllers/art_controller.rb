class ArtController < ApplicationController
  before_action :require_login, only: [:create, :vote_up, :vote_down, :new,
    :new_animated, :create_animated_art]

  include ActionController::Live

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

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(params[:id])

    if @art.update(art_param)
      redirect_to @art
    else
      render 'edit'
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

  def destroy
    @art = Art.find(params[:id])
    @art.destroy

    redirect_to current_user
  end

  private
    def art_param
      params.require(:art).permit(:title, :text, :rating)
    end
end

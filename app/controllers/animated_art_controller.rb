class AnimatedArtController < ApplicationController
  def index
    @animated_art = AnimatedArt.all
  end

  def new
    @animated_art = AnimatedArt.new
  end

  def show
    @animated_art = AnimatedArt.find(params[:id])
  end

  def create
    @animated_art = AnimatedArt.new(animated_art_parms)

    if @animated_art.save
      redirect_to new_animated_art_slide_path(@animated_art)
    else
      render 'new'
    end
  end

  private
    def animated_art_parms
      params.require(:animated_art).permit(:title)
    end
end

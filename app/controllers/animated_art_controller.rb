class AnimatedArtController < ApplicationController
  def new
    @animated_art = AnimatedArts.new
  end

  def show
    @animated_art = AnimatedArt.find(params[:id])
  end

  def create
    @animated_art = AnimatedArt.new(animated_art_parms)
    @animated_art.user = current_user

    if @animated_art.save
      redirect_to animated_art_path(@animated_art)
    else
      render 'new'
    end
  end

  private
    def animated_art_parms
      params.require(:animated_art).permit(:title)
    end
end

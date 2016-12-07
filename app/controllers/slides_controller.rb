class SlidesController < ApplicationController
  before_action :require_login

  def new
    @animated_art = AnimatedArt.find(params[:animated_art_id])
    @slide = Slide.new
  end

  def create
    @animated_art = AnimatedArt.find(params[:animated_art_id])
    puts @animated_art
    @slide = @animated_art.slides.create(slide_params)

    if @slide.save
      redirect_to new_animated_art_slide_path(@animated_art)
    else
      render 'new'
    end
  end

  private
    def slide_params
      params.require(:slide).permit(:text)
    end
end

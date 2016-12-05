class SlidesController < ApplicationController
  before_action :require_login, only: [:create]

  def create
    @animated_art = LiveArt.find(params[:id])

    @slide = @art.comments.create(comment_param)

    if @slide.save
      redirect_to @animated_art
    else
      redirect_to @animated_art
    end
  end

  private
    def slide_params
      params.require(:slides).permit(:text)
    end
end

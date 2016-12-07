class CommentsController < ApplicationController
  before_action :require_login, only: [:create]

  def create
    @art = Art.find(params[:art_id])

    @comment = @art.comments.create(comment_params)
    @comment.user = current_user
    @comment.user_name = current_user.first_name

    if @comment.save
      redirect_to @art
    else
      redirect_to @art
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:user, :body, :art)
    end
end

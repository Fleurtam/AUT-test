class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params_comment)
    if @comment.persisted?
      flash[:success] = 'Your comment has been succesfully created'
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def params_comment
    params.require(:comment).permit(:email, :body, :article_id)
  end
end
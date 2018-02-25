class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params_comment.merge(article_id: params[:article_id].to_i))
    if @comment.persisted?
      flash[:success] = 'Your comment has been succesfully created'
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = 'Comment failed'
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def params_comment
    params.require(:comment).permit(:email, :body)
  end
end

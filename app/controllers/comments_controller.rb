class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params_comment)
  end


  private

  def params_comment
    params.require(:comment).permit(:email, :body)
  end
end

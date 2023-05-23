class CommentsController < ApplicationController
	before_action :authenticate_user!, only: %i[create]

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.new
		@comment.body = comment_params[:body]
		@comment.author = current_user.username

		@comment.save

		redirect_to articles_path(@article)
	end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end


end

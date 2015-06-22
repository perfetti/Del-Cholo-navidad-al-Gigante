class PostCommentsController < InheritedResources::Base

	def create
		@post_comment = PostComment.new(post_comment_params)

		if @post_comment.save;
			# flash[:notice] = "Comment was successfully created."
			redirect_to :back, :notice => "Comment was successfully created."
		else
			# flash[:notice] = "Error creating post_comment: #(@post_comment.errors)"
			redirect_to :back, :notice => "Error creating post_comment: #(@post_comment.errors)"
		end
	end


  private

    def post_comment_params
      params.require(:post_comment).permit(:name, :email, :body, :post_id)
    end
end


class CommentsController < ApplicationController
    # allow unauthenticated users to only access cre
    before_filter :require_login, except: [:create]

    def create
        @comment = Comment.new(comment_params)
        @comment.article_id = params[:article_id]
        @comment.save

        # @comment.article_id lets us indicate which article is associated with this comment
        redirect_to article_path(@comment.article_id)
    end

    def comment_params
        params.require(:comment).permit(:author_name, :body)
    end
end

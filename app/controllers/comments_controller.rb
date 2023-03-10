class CommentsController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:create]

    def create
        @movie = Movie.find(params[:movie_id])
        @comment = @movie.comments.create(comment_params)
        redirect_to movie_path(@movie)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :content)
        end
end

class CommentsController < ApplicationController

    def new
        
    end
    
    def create
      
      @movie = Movie.find_by(id: params[:movie_id])
      
      @comment = Comment.new(movie_id: params[:movie_id], user_id: current_user.id)
      @comment.content = params[:content]
      
      if @comment.save
          redirect_to @movie
      else
          render 'movie/show'
      end
    end

    def index
        if params[:movie_id]
          @movie = Movie.find_by(id: params[:movie_id])
          if @movie.nil?
            redirect_to movies_path, alert: "Movie not found"
          else
            @comments = @movie.comments
          end
        else
          @comments = Comments.all
        end
      end
         
    def edit
        @comment = Comment.find_by(params[:id])
    end

    def show
        if params[:movie_id]
            @movie = Movie.find_by(id: params[:movie_id])
            @comment = @movie.comments.find_by(id: params[:id])
            if @comment.nil?
              redirect_to movie_comments_path(@movie), alert: "Comment not found"
            end
        else
            @comment = Comment.find(params[:id])
        end
    end
    
    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
    
        if @comment.save
          redirect_to @comment
        else
          render :edit
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :movie_id, :user_id)
    end
end

class MoviesController < ApplicationController

    def new
        @movie = Movie.new
    end

    def index
        if current_user
            @movies = Movie.all
        else
            redirect_to '/'
        end
    end
    
    
    
    def show
        @movie = Movie.find_by(id: params[:id])
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to movie_path(@movie)
        else
            render 'new'
        end
    end

    def edit
        @movie = Movie.find_by(id: params[:id])
    end

    def update
        @movie = Movie.find_by(id: params[:id])
        if @movie.update(movie_params)
            redirect_to movie_path(@movie)
        else
            render 'edit'
        end
    end

private

    def movie_params
        params.require(:movie).permit(:name, :genre, :rating)
    end
end

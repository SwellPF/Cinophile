class GenresController < ApplicationController
    before_action :require_login
    
    def new
        @genre=Genre.new
    end

    def index
        @genre = Genre.all
    end

    def create
        @genre = Genre.new(genre_params)
        if @genre.save
            redirect_to genres_path
        else
            render 'new'
        end
    end

    def show
        @genre = Genre.find_by(id: params[:id])
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        @genre = Genre.find_by(id: params[:id])
        if @genre.update(genre_params)
            redirect_to genres_path
        else
            render 'edit'
        end
    end

private

    def genre_params
        params.require(:genre).permit(:name)
    end

end

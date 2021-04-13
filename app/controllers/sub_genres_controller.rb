class SubGenresController < ApplicationController
  def index
    @sub_genres = Genre.find_by(id: params[:genre_id]).sub_genres
  end
end

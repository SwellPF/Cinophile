class AddMovieIdToWatchlistMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :watchlist_movies, :movie_id, :integer
  end
end

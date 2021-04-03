class AddWatchlistIdToWatchlistMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :watchlist_movies, :watchlist_id, :integer
  end
end

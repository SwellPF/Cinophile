class CreateWatchlistMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :watchlist_movies do |t|

      t.timestamps
    end
  end
end

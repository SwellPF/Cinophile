class AddGenreIdToSubGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_genres, :genre_id, :integer
  end
end

class AddYearReleasedToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :year_released, :integer
  end
end

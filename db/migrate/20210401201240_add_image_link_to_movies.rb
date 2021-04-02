class AddImageLinkToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :image_link, :string
  end
end

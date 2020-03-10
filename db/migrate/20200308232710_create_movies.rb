class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.belongs_to :genre, foreign_key: true

      t.timestamps
    end
  end
end

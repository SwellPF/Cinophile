class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :content, presence: true

  def movie_id=(name)
    self.category = Movie.find_by(id: id)
  end

  def movie_id
     self.movie ? self.movie.id : nil
  end


end

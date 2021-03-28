class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :content, presence: true

  def new(movie)
    @comment = Comment.new
    # @movie = 
  end

  def show
  end

end

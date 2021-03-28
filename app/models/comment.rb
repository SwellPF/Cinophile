class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  def new(movie)
    @comment = Comment.new
    # @movie = 
  end

  def show
  end

end

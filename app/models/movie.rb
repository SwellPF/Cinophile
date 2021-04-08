class Movie < ApplicationRecord
  belongs_to :genre
  has_many :comments
  has_many :users, through: :comments

  has_many :watchlist_movies
  has_many :watchlists, through: :watchlist_movies

  validates :title, presence: true
  validates :genre, presence: true
  validates :description, :year_released, :image_link, presence: true

  scope :filter_by_genre, -> (genre) { where genre: genre }
  scope :recent_releases, -> {where('year_released >= ?', Date.current.year - 5)}
  #scope :most_commented, -> {Comment.group(:movie_id).count}

end

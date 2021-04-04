class Watchlist < ApplicationRecord
    belongs_to :user
    
    has_many :watchlist_movies
    has_many :movies, through: :watchlists_movies

end

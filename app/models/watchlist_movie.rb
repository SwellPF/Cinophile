class WatchlistMovie < ApplicationRecord

    belongs_to :movies
    belongs_to :watchlists

    def new
    end

    def create
    end

end

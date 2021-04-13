class Genre < ApplicationRecord
    has_many :movies
    has_many :sub_genres
    
    validates :name, presence: true
end

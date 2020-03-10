class User < ApplicationRecord
    has_many :movies, through: :user_movies
    

end

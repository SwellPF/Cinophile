class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :movies, through: :user_movies
    validates :name, presence: true
    validates :email, uniqueness: true
    

end

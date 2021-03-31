class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :movies, through: :comments
    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true


end

class Movie < ApplicationRecord
  belongs_to :genre
  has_many :comments, through: :users
  has_many :users, through: :comments
  validates :title, presence: true
  validates :genre, presence: true
  
end

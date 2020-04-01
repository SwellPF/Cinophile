class Movie < ApplicationRecord
  belongs_to :genre
  has_many :comments, through: users
  has_many :users, through: :comments

end

class Board < ActiveRecord::Base
  validates_presence_of :title
  has_many :posts

  has_many :users_to_boards
  has_many :users, through: :users_to_boards
end

class Board < ActiveRecord::Base
  validates_presence_of :title
  has_many :posts

  has_many :user_to_boards, dependent: :destroy
  has_many :users, through: :user_to_boards
end

class Board < ActiveRecord::Base
  validates_presence_of :title
  has_many :posts
end

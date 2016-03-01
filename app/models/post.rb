class Post < ActiveRecord::Base
  validates_presence_of :title, :description, :board_id
  belongs_to :board
end

class Post < ActiveRecord::Base
  validates_presence_of :title, :description, :board_id, :user_id
  belongs_to :board
  belongs_to :user
end

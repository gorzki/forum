class UserToBoard < ActiveRecord::Base
  validates_presence_of :user_id, :board_id
  validates_uniqueness_of :user_id, :scope => :board_id

  belongs_to :user
  belongs_to :board

end

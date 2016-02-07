class Message < ActiveRecord::Base
  validates_presence_of :title, :description, :sender_id, :receiver_id
  belongs_to :users
end

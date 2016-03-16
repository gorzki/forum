class User < ActiveRecord::Base
  has_many :messeges
  has_many :posts

  enum role: [:guest, :user, :moderator, :admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 after_initialize :set_default_role, :if => :new_record?
 def set_default_role
   self.role ||= :guest
 end

end

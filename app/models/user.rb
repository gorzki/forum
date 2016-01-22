class User < ActiveRecord::Base
  has_many :messeges

  enum role: [:user, :admin, :guest, :moderator]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 after_initialize :set_default_role, :if => :new_record?
 def set_default_role
   self.role ||= :user
 end

end

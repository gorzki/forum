class User < ActiveRecord::Base
  has_many :messages
  has_many :posts, dependent: :destroy

  has_many :user_to_boards, dependent: :destroy
  has_many :boards, through: :user_to_boards
  enum role: [:user, :admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 after_initialize :set_default_role, :if => :new_record?
 def set_default_role
   self.role ||= :user
 end

end

class CreateUserToBoards < ActiveRecord::Migration
  def change
    create_table :user_to_boards do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :board, index: true, foreign_key: true
      t.boolean :is_moderator
    end
  end
end

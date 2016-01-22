class AddSenderIdAndReceiverIdToMesseges < ActiveRecord::Migration
  def change
    add_column :messeges, :sender_id, :integer
    add_column :messeges, :receiver_id, :integer
  end
end

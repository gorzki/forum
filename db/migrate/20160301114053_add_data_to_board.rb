class AddDataToBoard < ActiveRecord::Migration
  def change
    add_column :boards , :title, :string 
  end
end

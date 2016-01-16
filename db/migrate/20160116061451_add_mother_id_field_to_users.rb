class AddMotherIdFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mother_id, :integer
  end
end

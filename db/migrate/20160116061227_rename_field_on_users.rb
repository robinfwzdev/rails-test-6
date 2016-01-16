class RenameFieldOnUsers < ActiveRecord::Migration
  def up
    rename_column :users, :user_id, :father_id
  end

  def down
    rename_column :users, :father_id, :user_id
  end
end

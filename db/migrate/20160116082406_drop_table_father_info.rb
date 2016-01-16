class DropTableFatherInfo < ActiveRecord::Migration
  def up
    drop_table :father_infos
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

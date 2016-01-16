class CreateFatherInfos < ActiveRecord::Migration
  def change
    create_table :father_infos do |t|
      t.belongs_to :father, index: true
      t.string     :first_name
    end
  end
end

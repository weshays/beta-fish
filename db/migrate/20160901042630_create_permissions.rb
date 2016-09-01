class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :group, null: false
      t.string :name, null: false
    end

    add_index :permissions, :group
  end
end

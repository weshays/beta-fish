class CreateGroupedPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :grouped_permissions do |t|
      t.integer :permission_id, null: false
      t.integer :policy_id, null: false
    end

    add_index :grouped_permissions, [:permission_id, :policy_id]
  end
end

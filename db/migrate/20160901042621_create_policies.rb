class CreatePolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :policies do |t|
      t.boolean :default_policy, null: false, default: false
      t.string :name, null: false
      t.datetime :created_at
    end

    add_index :policies, :default_policy
    add_index :policies, :name
  end
end

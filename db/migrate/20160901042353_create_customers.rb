class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :policy_id, null: false
      t.string :business_name
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :strip_id
      t.boolean :active, null: false, default: true
      t.string :address, null: false
      t.string :address2
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
      t.string :website
      t.string :email, null: false
      t.string :phone_number, null: false
      t.float :monthly_rate, null: false, default: 0.00
      t.string :referrer, null: false
      t.boolean :opt_in, null: false, default: true
      t.string :source_lead
      t.string :source_lead_other
      t.boolean :lockout, null: false, default: false
      t.string :lockout_message
      t.datetime :created_at
      t.datetime :deleted_at
    end
  end
end

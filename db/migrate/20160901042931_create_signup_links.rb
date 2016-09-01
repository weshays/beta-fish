class CreateSignupLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :signup_links do |t|
      t.string :signup_type, null: false
      t.integer :customer_id
      t.string :business_name, null: false
      t.string :address, null: false
      t.string :address2
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
      t.string :website
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :access_key, null: false
      t.string :referrer, null: false
      t.boolean :opt_in, null: false, default: true
      t.string :source_lead
      t.string :source_lead_other
      t.boolean :processed_email, null: false, default: false
      t.boolean :processed_activation, null: false, default: false
      t.boolean :processed_payment_method, null: false, default: false
      t.datetime :created_at
    end

    add_index :signup_links, :customer_id
    add_index :signup_links, :access_key
  end
end

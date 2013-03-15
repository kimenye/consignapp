class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.references :account

      t.timestamps
    end
    add_index :customers, :account_id
  end
end

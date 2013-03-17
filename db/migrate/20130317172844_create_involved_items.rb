class CreateInvolvedItems < ActiveRecord::Migration
  def change
    create_table :involved_items do |t|
      t.references :product
      t.references :customer
      t.integer :quantity
      t.string :transaction_type

      t.timestamps
    end
    add_index :involved_items, :product_id
    add_index :involved_items, :customer_id
  end
end

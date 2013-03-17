class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :description
      t.decimal :list_price
      t.decimal :sale_price
      t.references :account

      t.timestamps
    end
    add_index :products, :account_id
  end
end

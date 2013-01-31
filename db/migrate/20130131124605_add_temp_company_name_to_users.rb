class AddTempCompanyNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :temp_company_name, :string
  end
end

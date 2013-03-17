class Product < ActiveRecord::Base
  belongs_to :account
  attr_accessible :code, :description, :list_price, :name, :sale_price, :account_id

  validates_uniqueness_of :code
  validates_presence_of :name, :code, :list_price

  def self.import(file, account_id)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    count = 0
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      product = find_by_id(row["id"]) || new
      product.attributes = row.to_hash.slice(*accessible_attributes)
      #TODO: Fix why a text field is being imported as a number
      product.code = product.code.to_i.to_s
      product.account_id = account_id
      product.save!
      count+=1
    end
    count
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
      when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
      when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end
end

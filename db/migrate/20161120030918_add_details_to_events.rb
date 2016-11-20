class AddDetailsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :website, :string
    add_column :events, :company_name, :string
    add_column :events, :address_line1, :string
    remove_column :events, :street_line1
    add_column :events, :address_line2, :string
  end
end

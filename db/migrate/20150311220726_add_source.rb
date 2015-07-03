class AddPartNumberToProducts < ActiveRecord::Migration
  def change
    add_column :messages, :source, :string
    add_column :messages, :taxon_id, :integer
    change_column :messages, :viewd, :viewed
    add_column :messages, :phone, :string
    add_column :messages, :vendor, :string
  end
end

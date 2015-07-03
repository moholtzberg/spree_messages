class AddCompanyToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :company, :string
  end
end

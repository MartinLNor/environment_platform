class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :name, :string
    add_column :users, :number, :string
    add_column :users, :fax, :string
  end
end

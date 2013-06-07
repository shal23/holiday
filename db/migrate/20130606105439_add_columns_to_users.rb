class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	drop_table :users
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
  end
end

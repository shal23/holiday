class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :travel_agent, :boolean
  end
end

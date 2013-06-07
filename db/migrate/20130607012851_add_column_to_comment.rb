class AddColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :post, :references
  end
end

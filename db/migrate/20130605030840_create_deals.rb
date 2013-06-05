class CreateDeals < ActiveRecord::Migration
  def change
  	drop_table :deals
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end

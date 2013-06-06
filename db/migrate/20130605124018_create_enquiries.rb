class CreateEnquiries < ActiveRecord::Migration
  def change
    drop_table :enquiries
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.boolean :join_mailing_list

      t.timestamps
    end
  end
end

class CreateTravelAgentProfiles < ActiveRecord::Migration
  def change
    create_table :travel_agent_profiles do |t|
      t.string :name
      t.string :company_name
      t.string :address
      t.string :company_url
      t.text :about
      t.string :avatar

      t.timestamps
    end
  end
end

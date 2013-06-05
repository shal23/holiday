class TravelAgentProfile < ActiveRecord::Base
  attr_accessible :about, :address, :avatar, :company_name, :company_url, :name

  validates :name, :presence => true
  validates :company_name, :presence => true
  validates :company_url, :presence => true
  
end

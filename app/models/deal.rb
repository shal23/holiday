class Deal < ActiveRecord::Base
  attr_accessible :description, :title, :url

  validates :title, :presence => true
  validates :url, :presence => true
  validates :description, :presence => true
  			:length => { :minimum => 5 }
end
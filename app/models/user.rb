class User < ActiveRecord::Base
  rolify
  after_create :add_role_to_user
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :travel_agent
  attr_accessible :provider, :uid, :name

  has_many :posts

  

   extend FriendlyId
  	friendly_id :name, use: :slugged

    def add_role_to_user
      if self.travel_agent == true
        self.add_role :travel_agent
      end
    end
end
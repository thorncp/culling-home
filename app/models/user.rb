class User < ActiveRecord::Base
  has_many :searches
  has_many :settings
  has_many :listings

  include Clearance::User
end

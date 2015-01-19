class User < ActiveRecord::Base
  has_many :searches
  has_many :settings

  include Clearance::User
end

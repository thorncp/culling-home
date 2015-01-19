class User < ActiveRecord::Base
  has_many :searches

  include Clearance::User
end

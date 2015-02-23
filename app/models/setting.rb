class Setting < ActiveRecord::Base
  belongs_to :user

  def self.bart_max_distance
    find_by(name: "bart_max_distance").value
  end

  def self.email_body
    find_by(name: "email_body").value
  end
end

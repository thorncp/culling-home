class Setting < ActiveRecord::Base
  def self.bart_max_distance
    find_by(name: "bart_max_distance").value
  end
end

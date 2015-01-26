class Listing < ActiveRecord::Base
  belongs_to :bart_station
  belongs_to :user

  def self.interested
    where(are_interested: true)
  end

  def self.pending
    where(are_interested: nil)
  end

  def self.bart_max_distance(distance)
    where("bart_distance is null OR bart_distance <= ?", distance)
  end
end

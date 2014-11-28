class Listing < ActiveRecord::Base
  belongs_to :bart_station

  def self.interested
    where(are_interested: true)
  end

  def self.pending
    where(are_interested: nil)
  end
end

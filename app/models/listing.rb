class Listing < ActiveRecord::Base
  def self.interested
    where(are_interested: true)
  end

  def self.pending
    where(are_interested: nil)
  end
end

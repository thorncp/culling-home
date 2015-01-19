class Search < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :description
  validates :url, presence: true, url: true
end

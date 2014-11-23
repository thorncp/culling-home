class Search < ActiveRecord::Base
  validates_presence_of :description
  validates :url, presence: true, url: true
end

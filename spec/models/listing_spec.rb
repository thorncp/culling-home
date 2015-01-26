require "rails_helper"

describe Listing do
  it { should belong_to :user }
end

require "rails_helper"

describe User do
  it { should have_many :searches }
  it { should have_many :settings }
  it { should have_many :listings }
end

ENV["RAILS_ENV"] ||= 'test'

require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rails'
require 'shoulda/matchers'
require 'clearance/rspec'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end

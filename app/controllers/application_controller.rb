class ApplicationController < ActionController::Base
  include Clearance::Controller

  before_filter :authorize

  protect_from_forgery with: :exception
end

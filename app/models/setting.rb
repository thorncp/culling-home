class Setting < ActiveRecord::Base
  belongs_to :user

  REGISTERED_SETTINGS = [
    :bart_max_distance,
    :email_body,
    :transit_max_time,
    :walk_score_minimum,
    :transit_score_minimum,
    :bike_score_minimum,
    :personal_crime_grade_minimum,
    :property_crime_grade_minimum,
  ]

  def self.register_setting_getters
    self.class.instance_eval do
      REGISTERED_SETTINGS.each do |setting_name|
        define_method(setting_name) { find_by!(name: setting_name).value }
      end
    end
  end
  register_setting_getters
end

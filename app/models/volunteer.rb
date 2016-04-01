class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_one :accommodation
  has_one :vehicle
end

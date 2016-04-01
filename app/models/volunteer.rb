class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_one :address
  has_one :accommodation
  has_one :car
end

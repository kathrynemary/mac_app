class Clinic < ActiveRecord::Base
  has_many :addresses
  has_many :business_hours
end

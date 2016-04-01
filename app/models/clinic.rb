class Clinic < ActiveRecord::Base
  has_one :address
  has_many :business_hours
end

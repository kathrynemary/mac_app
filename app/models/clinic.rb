class Clinic < ActiveRecord::Base
  belongs_to :address
  has_many :business_hours
end

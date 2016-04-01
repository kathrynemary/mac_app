class User < ActiveRecord::Base
  has_one :volunteer
  has_one :organizer
  belongs_to :address
end

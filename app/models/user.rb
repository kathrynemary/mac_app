class User < ActiveRecord::Base
  has_one :volunteer
  has_one :admin
  belongs_to :address
end

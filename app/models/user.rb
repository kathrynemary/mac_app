class User < ActiveRecord::Base
  rails_admin do

  end

  has_one :volunteer
  has_one :organizer
  belongs_to :address
end

class Address < ActiveRecord::Base
  belongs_to :user
  belong_to :clinic
end

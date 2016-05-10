class Address < ActiveRecord::Base
  has_one :user
  has_one :clinic

  def full_address
    "#{street_address_1} #{street_address_2}, #{city}, #{state.try(:upcase)}, #{zip_code}"
  end

end

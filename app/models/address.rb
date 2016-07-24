class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :clinic

  def full_address
    "#{street_address_1}#{line_two_if_there}, #{city}, #{state.try(:upcase)}, #{zip_code}"
  end

  def line_two_if_there
    ", #{street_address_2}" unless street_address_2.blank?
  end

end

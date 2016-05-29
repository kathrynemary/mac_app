class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rails_admin do

  end

  has_one :volunteer
  has_one :organizer
  belongs_to :address
  has_many :on_call_times

  accepts_nested_attributes_for :address

  def create_volunteer_model
    if volunteer.nil?
      self.volunteer = Volunteer.new(user: self)
      save!
    end
  end

  def create_address_model
    if address.nil?
      self.address = Address.new(user: self)
      save!
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end

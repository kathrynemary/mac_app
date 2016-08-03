class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rails_admin do

  end

  attr_accessor :name

  has_one :volunteer
  has_one :organizer
  has_many :addresses
  has_many :on_call_times

  def create_volunteer_model
    if volunteer.nil?
      self.volunteer = Volunteer.new(user: self)
      save!
    end
  end

  def address
    return unless addresses.present?
    addresses.last
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end

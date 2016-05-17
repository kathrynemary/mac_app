class OnCallTime < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :start_time, :end_time, presence: true
  validates :start_time, uniqueness: {scope: :user_id, message: "should be unque for the person"}
  validates :end_time, uniqueness: {scope: :user_id, message: "should be unque for the person"}

end

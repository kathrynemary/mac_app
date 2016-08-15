# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def select_random_user_id
  @u ||= User.order("RANDOM()").pluck(:id).to_a.dup
end

10.times do |n|
  User.create(first_name: "Jane", last_name: "Doe", phone_number: "1231231234", role: "volunteer", email: "test#{n}@example.com", password: "password", password_confirmation: "password")
end

User.all.each do |u|
  Address.create(street_address_1: "123 Fake St", city: "Springfield", state: "IL", zip_code: "60607", user: u)
end

5.times do |n|
  Volunteer.create(gender: "F", user_id: select_random_user_id.pop)
end

5.times do |n|
  Organizer.create(position: "position", board_member: true, user_id: select_random_user_id.pop)
end

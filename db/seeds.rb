# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def select_random_user_id
  User.all.sample.id
end

address = Address.create(street_address_1: "123 Fake St", city: "Springfield", state: "IL", zip_code: "60607")

10.times do |n|
  User.create(first_name: "Jane", last_name: "Doe", phone_number: "1231231234", role: "volunteer", address_id:  address.id, email: "test#{n}@example.com", password: "password", password_confirmation: "password")
end

10.times do |n|
  Volunteer.create(gender: "F", user_id: select_random_user_id)
end

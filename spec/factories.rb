FactoryGirl.define do

   factory :accommodation do
    bedding "queen sized bed in guest bedroom"
    privacy "locked door"
    guest_capacity 1
    pet "none"
    num_roommates 1
    volunteer_id 1
  end

  factory :address do 
    street_address_1 Faker::Address.street_address
    street_address_2 Faker::Address.secondary_address
    city Faker::Address.city
    state Faker::Address.state
    zip_code Faker::Address.zip
  end

  factory :business_hour do 
    open_time DateTime.parse("2016-04-01 00:38:41")
    close_time DateTime.parse("2016-04-01 00:38:41")
    day_of_week 1
  end

  factory :volunteer do 
    gender "female"
    on_call false
    user_id 1
  end

  factory :clinic do 
    title Faker::Name.title  
    transit_accessible Faker::Lorem.word 
    abortion_types Faker::Lorem.word
    site_url Faker::Internet.url 
    map_url Faker::Internet.url 
  end

  factory :organizer do 
    position Faker::Lorem.word
    board_member false
    user_id 1
  end

end
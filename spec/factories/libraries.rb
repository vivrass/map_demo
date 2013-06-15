# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :library do
    name { Faker::Name.name }
    address { Faker::Address.street_address}
    dg_name { Faker::Name.name }
    places { rand(100) }
  end
end

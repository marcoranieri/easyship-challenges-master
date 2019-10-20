FactoryBot.define do

  factory :company do
    sequence(:name) { |n| "MyCompany#{n}" }
  end

  factory :shipment do
    company
    destination_country { Faker::Address.state_abbr }
    origin_country { Faker::Address.state_abbr }
    tracking_number { "UM459056399US" }
    slug { Faker::Internet.username(specifier: 3..5) }
  end

  trait :with_items do
    after(:create) do |shipment|
      create(:shipment_item, shipment_id: shipment.id)
    end
  end

  factory :shipment_item do
    shipment
    description { ["iPad", "iPhone", "Apple Watch"].sample }
    weight { rand(5) }
  end
end

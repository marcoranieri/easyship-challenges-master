puts "* Deleting *"

puts "- ShipmentItem"
ShipmentItem.destroy_all

puts "- Shipment"
Shipment.destroy_all

puts "- Company"
Company.destroy_all

puts ""


company = Company.create!(name: 'New Co')
puts "* Creating Company *"
puts "- \"#{company.name}\""


puts "* Creating Shipments & ShipmentItems *"
5.times do
  shipment = Shipment.create!(
    company_id: company.id,
    destination_country: Faker::Address.country_code,
    origin_country: Faker::Address.country_code,
    tracking_number: %w(UM111116399USA UM459056399US).sample,
    slug: 'usps'
  )

  20.times do
    ShipmentItem.create!(
      description: %w(iPhone iPad Watch iMac MacBook Mouse Keyboard).sample,
      weight: (1..5).to_a.sample,
      shipment_id: shipment.id
    )
  end
end


puts "* DONE *"
puts ""
puts "Tot. Companies: #{Company.count}"
puts "Tot. Shipments: #{Shipment.count}"
puts "Tot. ShipmentItems: #{ShipmentItem.count}"

require "rails_helper"

RSpec.describe Shipment, type: :model do
  describe "" do


    let(:valid_shipment) {
      Shipment.new(
        company: Company.new(name: "New Co"),
        origin_country: "AI",
        destination_country: "ER",
        tracking_number: "UM459056399US",
        slug: "slug"
      )
    }

    let(:shipment_with_items) {
      Shipment.new(
        company: Company.new(name: "New Co"),
        origin_country: "AI",
        destination_country: "ER",
        tracking_number: "UM459056399US",
        slug: "slug",
        shipment_items: [
          ShipmentItem.new(description: "iPad", weight: rand(5)),
          ShipmentItem.new(description: "iPad", weight: rand(5)),
          ShipmentItem.new(description: "iPad", weight: rand(5)),
          ShipmentItem.new(description: "iPhone", weight: rand(5)),
          ShipmentItem.new(description: "iPhone", weight: rand(5)),
          ShipmentItem.new(description: "Apple Watch", weight: rand(5)),
        ]
      )
    }


    context 'Valid shipment:' do

      it "can be saved" do
        expect(valid_shipment.save!).to be_truthy
      end

    end

    context "Creating Shipment with INVALID attributes:" do

      it "is NOT valid with invalid Company" do
        shipment_without_company = Shipment.new(company: nil)
        expect(shipment_without_company).to_not be_valid
      end

      it "is NOT valid with invalid Slug" do
        shipment_without_slug = Shipment.new(slug: nil)
        expect(shipment_without_slug).to_not be_valid
      end

    end

    context 'Associations:' do

       it "should belong_to Company"  do
         expect(Shipment.reflect_on_association(:company).macro).to eq :belongs_to
       end

       it "should has_many ShipmentItems"  do
         expect(Shipment.reflect_on_association(:shipment_items).macro).to eq :has_many
       end

    end

    context "#group_items" do

      it 'returns correct array of hashes' do
        expect(shipment_with_items.group_and_order_items).to eq [
          { description: 'iPad', count: 3 },
          { description: 'iPhone', count: 2 },
          { description: 'Apple Watch', count: 1 }
        ]
      end

    end


  end
end

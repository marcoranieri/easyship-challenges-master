require "rails_helper"

RSpec.describe Shipment, type: :model do
  describe "" do

    let(:valid_shipment) { create(:shipment) }

    let(:shipment_with_items) { create(:shipment, :with_items) }


    context 'Valid shipment:' do

      it "can be saved" do
        expect(valid_shipment.save!).to be_truthy
      end

    end

    context "Creating Shipment with INVALID attributes:" do

      it "is NOT valid with invalid Company" do
        shipment_without_company = build(:shipment, company: nil)
        expect(shipment_without_company).to_not be_valid
      end

      it "is NOT valid with invalid Slug" do
        shipment_without_slug = build(:shipment, slug: nil)
        expect(shipment_without_slug).to_not be_valid
      end

    end

    context 'Associations:' do

      it "should belong_to Company"  do
        should belong_to(:company)
      end

      it "should has_many ShipmentItems"  do
        should have_many(:shipment_items)
      end

    end

    context "Delegate:" do
      it { should delegate_method(:name).to(:company) }
    end

    context "Model Validation:" do
      it { should validate_presence_of(:destination_country) }
      it { should validate_presence_of(:origin_country) }
      it { should validate_presence_of(:tracking_number) }
      it { should validate_presence_of(:slug) }
    end

    context "#group_and_order_items:" do

      it 'returns correct array of hashes' do
        s = build(:shipment)
        3.times {create(:shipment_item, weight: 1, description: "iPad", shipment: s)}
        2.times {create(:shipment_item, weight: 1, description: "iPhone", shipment: s)}
        create(:shipment_item, weight: 1, description: "Apple Watch", shipment: s)

        expect(s.group_and_order_items).to eq [
          { description: 'iPad', count: 3 },
          { description: 'iPhone', count: 2 },
          { description: 'Apple Watch', count: 1 }
        ]
      end

    end


  end
end

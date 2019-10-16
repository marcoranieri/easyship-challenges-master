require 'rails_helper'

describe ApiTrackingInformation do

  let(:result) do

    {
      "meta" => {
          "code" => 200
      },
      "data" => {
          "tracking" => {
              "id" => "5b7658cec7c33c0e007de3c5",
              "created_at" => "2018-08-17T05:10:38+00:00",
              "updated_at" => "2018-08-17T05:10:46+00:00",
              "last_updated_at" => "2018-08-17T05:10:46+00:00",
              "tracking_number" => "111111111111",
              "slug" => "fedex",
              "active" => false,
              "android" => [],
              "custom_fields" => nil,
              "customer_name" => nil,
              "delivery_time" => 2,
              "destination_country_iso3" => "JPN",
              "courier_destination_country_iso3" => "JPN",
              "emails" => [],
              "expected_delivery" => nil,
              "ios" => [],
              "note" => nil,
              "order_id" => nil,
              "order_id_path" => nil,
              "origin_country_iso3" => "CHN",
              "shipment_package_count" => 1,
              "shipment_pickup_date" => "2018-07-23T08:58:00",
              "shipment_delivery_date" => "2018-07-25T01:10:00",
              "shipment_type" => "FedEx International Economy",
              "shipment_weight" => 4,
              "shipment_weight_unit" => "kg",
              "signed_by" => "..KOSUTOKO",
              "smses" => [],
              "source" => "api",
              "tag" => "Delivered",
              "subtag" => "Delivered_001",
              "subtag_message" => "Delivered",
              "title" => "Title Name",
              "tracked_count" => 1,
              "last_mile_tracking_supported" => nil,
              "language" => nil,
              "unique_token" => "deprecated",
              "checkpoints" => [
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => nil,
                      "country_name" => nil,
                      "message" => "Shipment information sent to FedEx",
                      "country_iso3" => nil,
                      "tag" => "InfoReceived",
                      "subtag" => "InfoReceived_001",
                      "subtag_message" => "Info Received",
                      "checkpoint_time" => "2018-07-23T01:21:39-05:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "DONGGUAN CN",
                      "country_name" => "China",
                      "message" => "Picked up",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_002",
                      "subtag_message" => "Acceptance scan",
                      "checkpoint_time" => "2018-07-23T16:58:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "DONGGUAN CN",
                      "country_name" => "China",
                      "message" => "Left FedEx origin facility",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_007",
                      "subtag_message" => "Departure Scan",
                      "checkpoint_time" => "2018-07-23T20:45:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "GUANGZHOU CN",
                      "country_name" => "China",
                      "message" => "In transit",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_001",
                      "subtag_message" => "In Transit",
                      "checkpoint_time" => "2018-07-23T23:13:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "GUANGZHOU CN",
                      "country_name" => "China",
                      "message" => "Arrived at FedEx location",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_003",
                      "subtag_message" => "Arrival scan",
                      "checkpoint_time" => "2018-07-23T23:14:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "GUANGZHOU CN",
                      "country_name" => "China",
                      "message" => "International shipment release - Export",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_007",
                      "subtag_message" => "Departure Scan",
                      "checkpoint_time" => "2018-07-23T23:14:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "GUANGZHOU CN",
                      "country_name" => "China",
                      "message" => "Departed FedEx location",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_007",
                      "subtag_message" => "Departure Scan",
                      "checkpoint_time" => "2018-07-24T03:26:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "GUANGZHOU CN",
                      "country_name" => "China",
                      "message" => "In transit",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_001",
                      "subtag_message" => "In Transit",
                      "checkpoint_time" => "2018-07-24T04:01:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "GUANGZHOU CN",
                      "country_name" => "China",
                      "message" => "In transit",
                      "country_iso3" => "CHN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_001",
                      "subtag_message" => "In Transit",
                      "checkpoint_time" => "2018-07-24T04:03:00+08:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "NARITA-SHI JP",
                      "country_name" => "Japan",
                      "message" => "At destination sort facility",
                      "country_iso3" => "JPN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_004",
                      "subtag_message" => "Arrived at destination country",
                      "checkpoint_time" => "2018-07-24T08:27:00+09:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "NARITA-SHI JP",
                      "country_name" => "Japan",
                      "message" => "In transit - Package available for clearance",
                      "country_iso3" => "JPN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_001",
                      "subtag_message" => "In Transit",
                      "checkpoint_time" => "2018-07-24T09:35:00+09:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "NARITA-SHI JP",
                      "country_name" => "Japan",
                      "message" => "International shipment release - Import",
                      "country_iso3" => "JPN",
                      "tag" => "InTransit",
                      "subtag" => "InTransit_007",
                      "subtag_message" => "Departure Scan",
                      "checkpoint_time" => "2018-07-24T11:12:00+09:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "NARITA-SHI JP",
                      "country_name" => "Japan",
                      "message" => "In transit - Tendered to authorized agent for final delivery",
                      "country_iso3" => "JPN",
                      "tag" => "OutForDelivery",
                      "subtag" => "OutForDelivery_001",
                      "subtag_message" => "Out for Delivery",
                      "checkpoint_time" => "2018-07-24T13:02:00+09:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  },
                  {
                      "slug" => "fedex",
                      "city" => nil,
                      "created_at" => "2018-08-17T05:10:41+00:00",
                      "location" => "SAPPORO JP",
                      "country_name" => "Japan",
                      "message" => "Delivered",
                      "country_iso3" => "JPN",
                      "tag" => "Delivered",
                      "subtag" => "Delivered_001",
                      "subtag_message" => "Delivered",
                      "checkpoint_time" => "2018-07-25T10:10:00+09:00",
                      "coordinates" => [],
                      "state" => nil,
                      "zip" => nil
                  }
              ],
              "subscribed_smses" => [],
              "subscribed_emails" => [],
              "return_to_sender" => false,
              "tracking_account_number" => nil,
              "tracking_origin_country" => nil,
              "tracking_destination_country" => nil,
              "tracking_key" => nil,
              "tracking_postal_code" => nil,
              "tracking_ship_date" => nil,
              "tracking_state" => nil,
              "order_promised_delivery_date" => "2019-05-02",
              "delivery_type" => "pickup_at_store",
              "pickup_location" => "Flagship Store",
              "pickup_note" => nil
            }
        }
    }

  end

  describe "" do

    context "Retrieving API tracking data:" do

      it "has a valid Status" do
        expect(result["data"]["tracking"]["tag"]).to  eq("Delivered")
      end

      it "has a valid current_location" do
        expect(result["data"]["tracking"]["checkpoints"].last["location"]).to  eq("SAPPORO JP")
      end

      it "has a valid last_checkpoint_message" do
        expect(result["data"]["tracking"]["checkpoints"].last["message"]).to  eq("Delivered")
      end

      it "has a valid last_checkpoint_time" do
        expect(Date.parse(result["data"]["tracking"]["checkpoints"].last["checkpoint_time"]).strftime("%A, %d %B %Y at %l %p")).to  eq("Wednesday, 25 July 2018 at 12 AM")
      end

    end

  end
end

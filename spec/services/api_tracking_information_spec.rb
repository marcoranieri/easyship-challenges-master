require 'rails_helper'
require_relative 'result.rb'

describe ApiTrackingInformation do

  let(:result) { Api::Result::MY_TEST }

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

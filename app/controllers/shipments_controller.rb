class ShipmentsController < ApplicationController
  def index
    @shipments = Shipment.all
  end

  def show
    @company  = Company.find_by(id: params[:company_id])
    @shipment = Shipment.find_by(id: params[:id])

    tracking_update = ApiTrackingInformation.tracking_by(id: params[:id])

    if tracking_update.empty?
      @items = @shipment&.group_and_order_items
    else
      @items = tracking_update
    end
  end

end

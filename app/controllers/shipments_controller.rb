class ShipmentsController < ApplicationController
  def index
    company_id = Company.custom_find_id(params[:company_id])
    @shipments = Shipment.all_items(company_id)
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

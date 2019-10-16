class ShipmentsController < ApplicationController
  def index
    @shipments = Shipment.all
  end

  def show
    @company  = Company.find_by(id: params[:company_id])
    @shipment = Shipment.find_by(id: params[:id])

    @items    = @shipment&.group_and_order_items
  end
end

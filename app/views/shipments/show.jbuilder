json.shipment do
  json.company_id           @company.id
  json.destination_country  @shipment.destination_country
  json.origin_country       @shipment.origin_country
  json.tracking_number      @shipment.tracking_number
  json.slug                 @shipment.slug
  json.created_at           @shipment.created_at

  json.items                @items
end


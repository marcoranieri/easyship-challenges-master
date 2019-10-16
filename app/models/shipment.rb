class Shipment < ApplicationRecord
  belongs_to :company
  has_many   :shipment_items

  validates :destination_country, presence: true, length: { maximum: 3 }
  validates :origin_country,      presence: true, length: { maximum: 3 }
  validates :tracking_number,     presence: true
  validates :slug,                presence: true

  def group_and_order_items
    private_group_items
  end


  private

  def private_group_items(h=Hash.new(0))
    shipment_items.each { |item| h[item.description] +=1 }
    h.map { |k,v| {description: k,count: v} }.sort_by { |k| -k[:count] }
  end

end

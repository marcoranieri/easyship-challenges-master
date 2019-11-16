class Shipment < ApplicationRecord
  belongs_to :company
  has_many   :shipment_items

  delegate :name, to: :company

  validates :destination_country, presence: true, length: { maximum: 3 }
  validates :origin_country,      presence: true, length: { maximum: 3 }
  validates :tracking_number,     presence: true
  validates :slug,                presence: true

  scope :all_items, -> (company_id) { includes(:shipment_items, :company).where("company_id = ?", company_id) }

  def self.execute_sql(*sql_query)
   connection.execute(send(:sanitize_sql_array, sql_query))
  end

  def group_and_order_items
    private_group_items
  end


  private

  def private_group_items
    Shipment.execute_sql("
      SELECT description, COUNT(*) as count FROM shipment_items WHERE shipment_id = ? GROUP BY description ORDER BY count DESC
      ", self.id).map {|h| h.slice("description", "count").symbolize_keys}
  end

end

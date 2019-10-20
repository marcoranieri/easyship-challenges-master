class Company < ApplicationRecord
  has_many :shipments

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  scope :custom_find_id, -> (id) { select("id").where("id = ?", id).first.id }
end

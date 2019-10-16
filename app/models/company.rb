class Company < ApplicationRecord
  has_many :shipments

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end

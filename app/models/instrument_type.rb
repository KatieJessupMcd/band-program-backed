class InstrumentType < ApplicationRecord
  has_many :students
  has_many :instrument_inventory_items
  belongs_to :instrument_family
end

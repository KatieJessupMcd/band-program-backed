class InstrumentInventoryItem < ApplicationRecord
  belongs_to :school
  belongs_to :instrument_type
end

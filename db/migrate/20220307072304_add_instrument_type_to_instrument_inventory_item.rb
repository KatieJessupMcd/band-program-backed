class AddInstrumentTypeToInstrumentInventoryItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :instrument_inventory_items, :instrument_type, foreign_key: true
  end
end

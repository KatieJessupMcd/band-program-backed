class AddInstrumentFamilyToInstrumentType < ActiveRecord::Migration[7.0]
  def change
    add_reference :instrument_types, :instrument_family, foreign_key: true
  end
end

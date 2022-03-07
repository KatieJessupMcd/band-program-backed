class AddInstrumentTypeToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :instrument_type, foreign_key: true
  end
end

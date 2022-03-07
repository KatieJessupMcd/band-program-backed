class AddInstrumentTypeIdToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :instrument_types, :students, foreign_key: true
  end
end

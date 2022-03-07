class CreateInstrumentFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :instrument_families do |t|
      t.string :name

      t.timestamps
    end
  end
end

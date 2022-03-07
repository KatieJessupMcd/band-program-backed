class CreateInstrumentInventoryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :instrument_inventory_items do |t|
      t.integer :condition
      t.date :date_bought
      t.integer :serial_number
      t.string :brand
      t.string :model
      t.decimal :estimated_value
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end

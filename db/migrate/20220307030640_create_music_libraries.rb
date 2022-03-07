class CreateMusicLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :music_libraries do |t|
      t.string :title
      t.string :category
      t.integer :difficulty
      t.string :composer
      t.string :arranger
      t.string :publisher
      t.string :genre
      t.boolean :is_hard_copy
      t.boolean :is_digital
      t.boolean :is_out_of_print
      t.decimal :purchase_price
      t.date :acquisition_date
      t.integer :serial_number
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end

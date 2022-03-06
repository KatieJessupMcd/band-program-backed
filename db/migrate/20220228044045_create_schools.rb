class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :lowest_grade
      t.integer :highest_grade

      t.timestamps
    end
  end
end

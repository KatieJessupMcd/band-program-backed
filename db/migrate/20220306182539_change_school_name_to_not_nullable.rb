class ChangeSchoolNameToNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:schools, :name, false, "School Test Name")
  end
end

class ChangeStudentFirstLastNameToNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:students, :first_name, false, "Student Test First Name")
    change_column_null(:students, :last_name, false, "Student Test Last Name")
  end
end

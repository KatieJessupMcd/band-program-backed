class CreateJoinTableStudentEnsemble < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :ensembles do |t|
      t.index [:student_id, :ensemble_id]
      t.index [:ensemble_id, :student_id]
    end
  end
end

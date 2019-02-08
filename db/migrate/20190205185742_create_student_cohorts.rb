class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
    t.references :student, index: true, foreign_key: true
    t.references :cohort, index: true, foreign_key: true

    t.timestamps
    end
  end
end

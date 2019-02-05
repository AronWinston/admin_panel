class AddCohortRefinTeachers < ActiveRecord::Migration[5.2]
  def change
    add_reference :teachers, :cohort, foreign_key: true
  end
end

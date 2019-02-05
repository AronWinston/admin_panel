class AddTeacherRefToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :cohorts, :teacher, foreign_key: true
  end
end

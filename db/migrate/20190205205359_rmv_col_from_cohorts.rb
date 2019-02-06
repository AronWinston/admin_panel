class RmvColFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :student_id
  end
end

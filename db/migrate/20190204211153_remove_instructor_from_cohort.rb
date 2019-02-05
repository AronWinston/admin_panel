class RemoveInstructorFromCohort < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :instructor, :string
  end
end

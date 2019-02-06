class RemoveColumnFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :students
  end
end

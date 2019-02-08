class RmColumnFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :teacher_id
  end
end

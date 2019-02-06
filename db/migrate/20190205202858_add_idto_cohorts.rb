class AddIdtoCohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :cohorts, :student, foreign_key: true
  end
end

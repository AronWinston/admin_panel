class AddEducationToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :education, :string
  end
end

class CreateEmployeeProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_projects do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

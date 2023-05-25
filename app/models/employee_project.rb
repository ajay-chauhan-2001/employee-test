class EmployeeProject < ApplicationRecord
  belongs_to :employee
  belongs_to :project
  validates :employee_id, uniqueness: { scope: :project_id, message: "is already assigned to this project."}

end

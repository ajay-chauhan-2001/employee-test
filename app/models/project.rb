class Project < ApplicationRecord
    has_many :employee_projects, dependent: :destroy
    has_many :employees, through: :employee_projects
    validates :name, :presence => true, :uniqueness => true

end

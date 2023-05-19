# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# projects = Project.create(name: 'Ruby on Rails')
# employees = Employee.create(name: 'ankit')
# employeeproject =EmployeeProject.create(project:projects,employee:employees)

# projects = Project.create(name: 'Ruby')
# employees = Employee.create(name: 'Ajay')
# employeeproject =EmployeeProject.create(project:projects,employee:employees)

projects = Project.create(name: 'Ruby on Rails')
projects = Project.create(name: 'Ruby on Rails')

employees = Employee.create(name: 'ankur')
employees1 = Employee.create(name: 'Ajay')

employeeproject =EmployeeProject.create(project:projects,employee:employees)
employeeproject =EmployeeProject.create(project:projects,employee:employees1)



# require 'faker'

# 5.times do
#   Employee.create(name: Faker::Name.name)
# end

# 5.times do
#   Project.create(
#     name: Faker::Name.name,
    
#   )
# end

# projects = Project.create([
#     { name: 'Ruby' },
#     { name: 'Rails ' },
#     { name: 'Ruby on Rails' }
#   ])
  
#   employees = Employee.create([
#     { name: 'Ajay' },
#     { name: 'ankur' },
#     { name: 'ankit' }
#   ])

#   employeeproject = EmployeeProject.create([
#    { project:projects,employee:employees},
#    {project:projects,employee:employees},
#    {project:projects,employee:employees}

#   ])
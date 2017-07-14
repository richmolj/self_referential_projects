# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[Project, TaskGroup].each(&:delete_all)

proj1 = Project.create! name: 'proj1'
proj2 = Project.create! name: 'proj2'

subproj1 = proj1.subprojects.create! name: 'subproj_1'
subproj2 = proj2.subprojects.create! name: 'subproj_2'

subproj1.task_groups.create! name: 'proj1_tg_1'
subproj1.task_groups.create! name: 'proj1_tg_2'

subproj2.task_groups.create! name: 'proj2_tg_1'
subproj2.task_groups.create! name: 'proj2_tg_2'

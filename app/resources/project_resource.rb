class ProjectResource < ApplicationResource
  type :projects
  model Project

  has_many :task_groups,
    scope: -> { TaskGroup.all },
    foreign_key: :project_id,
    resource: TaskGroupResource
  has_many :subprojects,
    scope: -> { Project.all },
    foreign_key: :superproject_id,
    resource: SubprojectResource
end

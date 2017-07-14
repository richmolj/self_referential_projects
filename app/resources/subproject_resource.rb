class SubprojectResource < ApplicationResource
  type :sub_projects
  model Project

  has_many :task_groups,
    scope: -> { TaskGroup.all },
    foreign_key: :project_id,
    resource: TaskGroupResource
end

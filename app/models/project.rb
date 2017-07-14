class Project < ApplicationRecord
  has_many :subprojects, class_name: 'Project', foreign_key: :superproject_id
  belongs_to :superproject, class_name: 'Project', optional: true

  has_many :task_groups
end

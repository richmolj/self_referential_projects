class SerializableSubproject < JSONAPI::Serializable::Resource
  type :sub_projects

  has_many :task_groups
end

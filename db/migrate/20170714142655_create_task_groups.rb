class CreateTaskGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :task_groups do |t|
      t.integer :project_id
      t.string :name

      t.timestamps
    end
  end
end

require 'rails_helper'

RSpec.describe "task_groups#create", type: :request do
  context 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'task_groups',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        jsonapi_post "/api/v1/task_groups", payload
      }.to change { TaskGroup.count }.by(1)
      task_group = TaskGroup.last

      assert_payload(:task_group, task_group, json_item)
    end
  end
end

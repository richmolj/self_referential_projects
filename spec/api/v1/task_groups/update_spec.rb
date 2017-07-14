require 'rails_helper'

RSpec.describe "task_groups#update", type: :request do
  context 'basic update' do
    let!(:task_group) { create(:task_group) }

    let(:payload) do
      {
        data: {
          id: task_group.id.to_s,
          type: 'task_groups',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        jsonapi_put "/api/v1/task_groups/#{task_group.id}", payload
      }.to change { task_group.reload.attributes }
      assert_payload(:task_group, task_group, json_item)

      # ... assert updates attributes ...
    end
  end
end

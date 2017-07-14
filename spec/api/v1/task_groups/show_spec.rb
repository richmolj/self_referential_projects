require 'rails_helper'

RSpec.describe "task_groups#show", type: :request do
  context 'basic fetch' do
    let!(:task_group) { create(:task_group) }

    it 'serializes the resource correctly' do
      get "/api/v1/task_groups/#{task_group.id}"

      assert_payload(:task_group, task_group, json_item)
    end
  end
end

require 'rails_helper'

RSpec.describe "task_groups#index", type: :request do
  context 'basic fetch' do
    let!(:task_group1) { create(:task_group) }
    let!(:task_group2) { create(:task_group) }

    it 'serializes the list correctly' do
      get "/api/v1/task_groups"

      expect(json_ids(true)).to match_array([task_group1.id, task_group2.id])
      assert_payload(:task_group, task_group1, json_items[0])
      assert_payload(:task_group, task_group2, json_items[1])
    end
  end
end

require 'rails_helper'

RSpec.describe "task_groups#destroy", type: :request do
  context 'basic destroy' do
    let!(:task_group) { FactoryGirl.create(:task_group) }

    it 'updates the resource' do
      expect {
        delete "/api/v1/task_groups/#{task_group.id}"
      }.to change { TaskGroup.count }.by(-1)

      expect(response.status).to eq(204)
    end
  end
end

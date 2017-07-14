require 'rails_helper'

RSpec.describe "projects#destroy", type: :request do
  context 'basic destroy' do
    let!(:project) { FactoryGirl.create(:project) }

    it 'updates the resource' do
      expect {
        delete "/api/v1/projects/#{project.id}"
      }.to change { Project.count }.by(-1)

      expect(response.status).to eq(204)
    end
  end
end

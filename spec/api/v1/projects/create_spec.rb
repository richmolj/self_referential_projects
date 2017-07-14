require 'rails_helper'

RSpec.describe "projects#create", type: :request do
  context 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'projects',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        jsonapi_post "/api/v1/projects", payload
      }.to change { Project.count }.by(1)
      project = Project.last

      assert_payload(:project, project, json_item)
    end
  end
end

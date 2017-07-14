require 'rails_helper'

RSpec.describe "projects#show", type: :request do
  context 'basic fetch' do
    let!(:project) { create(:project) }

    it 'serializes the resource correctly' do
      get "/api/v1/projects/#{project.id}"

      assert_payload(:project, project, json_item)
    end
  end
end

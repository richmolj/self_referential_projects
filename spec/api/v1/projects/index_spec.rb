require 'rails_helper'

RSpec.describe "projects#index", type: :request do
  context 'basic fetch' do
    let!(:project1) { create(:project) }
    let!(:project2) { create(:project) }

    it 'serializes the list correctly' do
      get "/api/v1/projects"

      expect(json_ids(true)).to match_array([project1.id, project2.id])
      assert_payload(:project, project1, json_items[0])
      assert_payload(:project, project2, json_items[1])
    end
  end
end

require 'rails_helper'

RSpec.describe API::V1::DisciplinesController, type: :request do
  describe 'GET#index' do
    let(:response_body) { JSON.parse(response.body) }
    let(:disciplines) { JSON.parse(Discipline.all.to_json, symbolized_names: true) }
    before { get api_v1_disciplines_path }

    it 'returns all discipline objects stored' do
      disciplines.each do |discipline|
        expect(response_body).to include(discipline)
      end
    end
  end
end

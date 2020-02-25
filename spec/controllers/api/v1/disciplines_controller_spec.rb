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

  describe 'POST#create' do
    let(:response_body) { JSON.parse(response.body) }

    before { post api_v1_disciplines_path(params) }

    context 'when the parameters are valid' do
      let(:response_id) { response_body['id'] }
      let(:params) do
        {
          name: 'Filosofia'
        }
      end

      it 'returns the created object' do
        expect(response_body).not_to be nil
      end

      it 'stored the object created' do
        expect(JSON.parse(Discipline.find(response_id).to_json)).to eq(response_body)
      end
    end

    context "when the parameters aren't valid" do
      let(:params) { { } }

      it 'returns the message error' do
        expect(response_body).to include('error')
        expect(response_body['error']).not_to be_empty
      end
    end
  end
end

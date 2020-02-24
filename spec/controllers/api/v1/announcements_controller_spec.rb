require 'rails_helper'

RSpec.describe API::V1::AnnouncementsController, type: :request do
  let(:response_body) { JSON.parse(response.body) }

  describe 'GET#index' do
    let(:announcements) { JSON.parse(Announcement.all.to_json) }

    before { get api_v1_announcements_path }

    it { expect(response).to have_http_status(200) }

    it 'returns all announcement stored' do
      expect(response_body.count).to eq 2
      announcements.each do |announcement|
        expect(response_body).to include(announcement)
      end
    end
  end

  describe 'POST#create' do
    context 'when the parameters are valid' do
      let(:params) do
        {
          entity_id: 'as45',
          announcement_date: DateTime.now,
          name: 'Convocatoria test'
        }
      end

      before { post api_v1_announcements_path, params: params }

      it { expect(response).to have_http_status(200) }

      it 'creates a new announcement' do
        expect(response_body).to include('id', 'name', 'announcement_date', 'entity_id')
      end
    end

    context "when the parameters aren't valid" do
      let(:params) do
        {
          announcement_date: DateTime.now,
          name: 'Convocatoria test'
        }
      end

      before { post api_v1_announcements_path, params: params }

      it 'returns a message error' do
        expect(response_body).to eq({ "entity_id"=> ["can't be blank"] })
      end
    end
  end

  describe 'GET#show' do
    context 'when the announcement exist' do
      let(:convocatoria_colciencias){ announcements(:convocatoria_colciencias) }
      let(:expected_response){ JSON.parse(convocatoria_colciencias.to_json) }

      before { get api_v1_announcement_path(id: convocatoria_colciencias.id) }

      it 'returns the announcement selected' do
        expect(response_body).to eq(expected_response)
      end
    end

    context "when the announcement doesn't exist" do
      let(:expected_response){ { "error"=>"Couldn't find Announcement with 'id'=INVALID_ID" } }

      before { get api_v1_announcement_path(id: 'INVALID_ID') }

      it 'returns the announcement message error' do
        expect(response_body).to eq(expected_response)
      end
    end
  end
end

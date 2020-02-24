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
end

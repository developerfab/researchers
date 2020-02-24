require 'rails_helper'

RSpec.describe AnnouncementController, type: :request do
  let(:response_body) { JSON.parse(response.body) }

  context 'when there are announcements create' do
    let(:announcements) { JSON.parse(Announcement.all.to_json) }

    before { get announcement_index_path }

    it { expect(response).to have_http_status(200) }

    it 'returns all announcement stored' do
      expect(response_body.count).to eq 2
      announcements.each do |announcement|
        expect(response_body).to include(announcement)
      end
    end
  end
end

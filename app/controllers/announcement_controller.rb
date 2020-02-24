class AnnouncementController < ApplicationController
  def index
    render json: announcements.to_json
  end

  private

  def announcements
    Announcement.all
  end
end

class API::V1::AnnouncementsController < ApplicationController
  def index
    render json: announcements.to_json
  end

  def create
    announcement = Announcement.new(permited_params)
    if announcement.save
      render json: announcement.to_json
    else
      render json: announcement.errors.to_json
    end
  end

  private

  def permited_params
    params.permit(:name, :entity_id, :announcement_date)
  end

  def announcements
    Announcement.all
  end
end

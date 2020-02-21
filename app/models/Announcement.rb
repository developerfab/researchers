class Announcement < ActiveRecord::Base
  validates :name, :entity_id, :announcement_date, presence: true
end

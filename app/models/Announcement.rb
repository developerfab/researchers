class Announcement < ActiveRecord::Base
  has_and_belongs_to_many :researchers

  validates :name, :entity_id, :announcement_date, presence: true
end

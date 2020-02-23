class Education < ActiveRecord::Base
  validates :name, :level_entity_id, presence: true
end

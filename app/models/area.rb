class Area < ActiveRecord::Base
  validates :name, :entity_id, presence: true
  belongs_to :discipline
end

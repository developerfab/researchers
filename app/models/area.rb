class Area < ActiveRecord::Base
  has_many :specialization_areas
  belongs_to :discipline

  validates :name, :entity_id, presence: true
  validates_associated :discipline, :specialization_areas
end

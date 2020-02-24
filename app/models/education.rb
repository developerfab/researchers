class Education < ActiveRecord::Base
  has_many :researcher_educations
  has_many :researchers, through: :researcher_educations

  validates :name, :level_entity_id, presence: true
end

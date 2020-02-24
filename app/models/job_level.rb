class JobLevel < ActiveRecord::Base
  has_many :researcher_job_levels
  has_many :researchers, through: :researcher_job_levels

  validates :name, :class_id_entity, presence: true
end

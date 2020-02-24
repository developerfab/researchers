class ResearcherJobLevel < ActiveRecord::Base
  belongs_to :researcher
  belongs_to :job_level
end

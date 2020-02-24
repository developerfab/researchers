class ResearcherEducation < ActiveRecord::Base
  belongs_to :researcher
  belongs_to :education
end

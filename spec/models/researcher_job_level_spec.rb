require 'rails_helper'

RSpec.describe ResearcherJobLevel, type: :model do
  it { is_expected.to belong_to(:researcher) }
  it { is_expected.to belong_to(:job_level) }
end

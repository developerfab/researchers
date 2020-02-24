require 'rails_helper'

RSpec.describe ResearcherEducation, type: :model do
  it { is_expected.to belong_to(:researcher) }
  it { is_expected.to belong_to(:education) }
end

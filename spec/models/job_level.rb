require 'rails_helper'

RSpec.describe JobLevel, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:class_id_entity) }
  it { is_expected.to have_many(:researcher_job_levels) }
  it { is_expected.to have_many(:researchers) }
end

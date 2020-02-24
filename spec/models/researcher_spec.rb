require 'rails_helper'

RSpec.describe Researcher, type: :model do
  it { is_expected.to validate_presence_of(:birthdate) }
  it { is_expected.to validate_presence_of(:age) }
  it { is_expected.to validate_presence_of(:gender) }
  it { is_expected.to validate_presence_of(:id_gender_entity) }
  it { is_expected.to have_and_belong_to_many(:announcements) }
  it { is_expected.to have_one(:education) }
  it { is_expected.to have_one(:researcher_job_level) }
  it { is_expected.to have_one(:job_level) }
end

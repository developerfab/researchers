require 'rails_helper'

RSpec.describe Researcher, type: :model do
  it { is_expected.to validate_presence_of(:birthdate) }
  it { is_expected.to validate_presence_of(:age) }
  it { is_expected.to validate_presence_of(:gender) }
  it { is_expected.to validate_presence_of(:id_gender_entity) }
end
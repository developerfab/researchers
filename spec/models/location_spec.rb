require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to validate_presence_of(:town) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:dane_code) }
  it { is_expected.to validate_presence_of(:region) }
end

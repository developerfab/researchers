require 'rails_helper'

RSpec.describe SpecializationArea, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to belong_to(:area) }
end

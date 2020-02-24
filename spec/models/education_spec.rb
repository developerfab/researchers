require 'rails_helper'

RSpec.describe Education, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:level_entity_id) }
  it { is_expected.to have_many(:researchers) }
end

require 'rails_helper'

RSpec.describe Area, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:entity_id) }
  it { is_expected.to belong_to(:discipline) }
end 

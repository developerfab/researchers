require 'rails_helper'

RSpec.describe JobLevel, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:class_id_entity) }
end

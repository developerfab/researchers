require 'rails_helper'

RSpec.describe Announcement, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:entity_id) }
  it { is_expected.to validate_presence_of(:announcement_date) }
  it { is_expected.to have_and_belong_to_many(:researchers) }
end

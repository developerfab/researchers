class SpecializationArea < ActiveRecord::Base
  belongs_to :area

  validates :name, presence: true
  validates_associated :area
end

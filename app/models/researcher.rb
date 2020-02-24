class Researcher < ActiveRecord::Base
  has_one :researcher_education
  has_one :education, through: :researcher_education
  has_and_belongs_to_many :announcements

  validates :birthdate, :age, :gender, :id_gender_entity, presence: true
end

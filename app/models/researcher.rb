class Researcher < ActiveRecord::Base
  has_and_belongs_to_many :announcements

  validates :birthdate, :age, :gender, :id_gender_entity, presence: true
end

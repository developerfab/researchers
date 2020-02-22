class Researcher < ActiveRecord::Base
  validates :birthdate, :age, :gender, :id_gender_entity, presence: true
end

class Discipline < ActiveRecord::Base
  validates :name, presence: true
  has_many :areas
end

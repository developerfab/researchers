class Discipline < ActiveRecord::Base
  validates :name, presence: true
end

class JobLevel < ActiveRecord::Base
  validates :name, :class_id_entity, presence: true
end

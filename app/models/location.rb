class Location < ActiveRecord::Base
  validates :town, :state, :country, :dane_code, :region, presence: true
end

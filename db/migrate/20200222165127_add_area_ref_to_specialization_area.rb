class AddAreaRefToSpecializationArea < ActiveRecord::Migration[6.0]
  def change
    add_reference :specialization_areas, :area, null: false, foreign_key: true
  end
end

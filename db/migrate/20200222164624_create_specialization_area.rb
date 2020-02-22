class CreateSpecializationArea < ActiveRecord::Migration[6.0]
  def change
    create_table :specialization_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end

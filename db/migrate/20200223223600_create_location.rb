class CreateLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :town
      t.string :state
      t.string :country
      t.string :dane_code
      t.string :region
      t.string :location_entity_id, null: true

      t.timestamps
    end
  end
end

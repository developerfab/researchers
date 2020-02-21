class CreateArea < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :entity_id
      t.string :name

      t.timestamps
    end
  end
end

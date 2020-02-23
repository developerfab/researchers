class CreateEducation < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :level_entity_id
      t.string :name

      t.timestamps
    end
  end
end

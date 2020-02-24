class CreateJobLevel < ActiveRecord::Migration[6.0]
  def change
    create_table :job_levels do |t|
      t.string :class_id_entity
      t.string :name

      t.timestamps
    end
  end
end

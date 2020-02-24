class CreateResearcherJobLevel < ActiveRecord::Migration[6.0]
  def change
    create_table :researcher_job_levels do |t|
      t.belongs_to :job_level
      t.belongs_to :researcher
      t.string :level

      t.timestamps
    end
  end
end

class CreateResearcherEducation < ActiveRecord::Migration[6.0]
  def change
    create_table :researcher_educations do |t|
      t.belongs_to :researcher
      t.belongs_to :education
      t.string :level

      t.timestamps
    end
  end
end

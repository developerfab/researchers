class CreateAnnouncementsAndResearchers < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements_researchers, id: false do |t|
      t.belongs_to :researcher, foreing_key: true
      t.belongs_to :announcement, foreing_key: true
    end
  end
end

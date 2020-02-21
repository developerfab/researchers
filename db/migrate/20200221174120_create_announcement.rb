class CreateAnnouncement < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.string :name
      t.string :entity_id
      t.string :announcement_date
    end
  end
end

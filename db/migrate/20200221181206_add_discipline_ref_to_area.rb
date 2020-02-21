class AddDisciplineRefToArea < ActiveRecord::Migration[6.0]
  def change
    add_reference :areas, :discipline, null: false, foreign_key: true
  end
end

class CreateResearcher < ActiveRecord::Migration[6.0]
  def change
    create_table :researchers do |t|
      t.datetime :birthdate
      t.float :age
      t.string :gender
      t.string :id_gender_entity

      t.timestamps
    end
  end
end

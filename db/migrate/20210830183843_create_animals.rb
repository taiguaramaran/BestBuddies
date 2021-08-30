class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.string :category
      t.string :size
      t.string :gender
      t.string :age
      t.references :user, null: false, foreign_key: true
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
end

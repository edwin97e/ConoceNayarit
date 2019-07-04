class CreateLands < ActiveRecord::Migration[5.2]
  def change
    create_table :lands do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end

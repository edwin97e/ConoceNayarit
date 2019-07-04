class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.text :body
      t.string :sites

      t.timestamps
    end
  end
end

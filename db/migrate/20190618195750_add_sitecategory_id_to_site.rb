class AddSitecategoryIdToSite < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :sitecategory, foreign_key: true
  end
end

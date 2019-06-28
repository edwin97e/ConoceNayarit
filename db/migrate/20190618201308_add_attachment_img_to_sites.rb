class AddAttachmentImgToSites < ActiveRecord::Migration[5.2]
  def self.up
    change_table :sites do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :sites, :img
  end
end

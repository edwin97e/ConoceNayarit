class AddAttachmentImgToRoutes < ActiveRecord::Migration[5.2]
  def self.up
    change_table :routes do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :routes, :img
  end
end

class AddAttachmentImgToHotels < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hotels do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :hotels, :img
  end
end

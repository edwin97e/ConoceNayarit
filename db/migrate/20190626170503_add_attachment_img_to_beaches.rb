class AddAttachmentImgToBeaches < ActiveRecord::Migration[5.2]
  def self.up
    change_table :beaches do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :beaches, :img
  end
end

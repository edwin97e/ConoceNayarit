class AddAttachmentImgToEvents < ActiveRecord::Migration[5.2]
  def self.up
    change_table :events do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :events, :img
  end
end

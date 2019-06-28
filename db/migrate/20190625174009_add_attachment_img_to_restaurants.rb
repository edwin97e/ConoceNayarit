class AddAttachmentImgToRestaurants < ActiveRecord::Migration[5.2]
  def self.up
    change_table :restaurants do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :restaurants, :img
  end
end

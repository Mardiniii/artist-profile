class AddAttachmentImageToBackgroundImages < ActiveRecord::Migration
  def self.up
    change_table :background_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :background_images, :image
  end
end

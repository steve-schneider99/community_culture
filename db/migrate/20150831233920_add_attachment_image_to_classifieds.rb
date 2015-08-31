class AddAttachmentImageToClassifieds < ActiveRecord::Migration
  def self.up
    change_table :classifieds do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :classifieds, :image
  end
end

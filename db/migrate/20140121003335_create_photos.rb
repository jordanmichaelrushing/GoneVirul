class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.attachment :blog_picture
      t.attachment :landing_picture
    end
  end

  def down
    drop_table :photos
  end
end

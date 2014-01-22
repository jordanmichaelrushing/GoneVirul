class AddBlogIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :blog_id, :integer
  end
end

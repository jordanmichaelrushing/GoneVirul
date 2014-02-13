class AddFbPostNumberToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :fb_post_number, :string
  end
end

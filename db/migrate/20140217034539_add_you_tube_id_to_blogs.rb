class AddYouTubeIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :youtube_id, :string
  end
end

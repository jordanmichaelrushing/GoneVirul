class AddIndexToBlog < ActiveRecord::Migration
  def change
    add_index :blogs, :slug, unique: true
  end
end

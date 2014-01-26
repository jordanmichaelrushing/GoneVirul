class AddIpAddressToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :ip_address, :string
    add_column :blogs, :ip_address_count, :integer, default: 0
  end
end

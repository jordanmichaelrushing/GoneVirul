# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.gonevirul.com/public"

SitemapGenerator::Sitemap.create do
  Blog.find_each do |blog|
    add blog_path(blog), :lastmod => blog.updated_at
  end
  add "/_/about-gonevirul"
  add "/_/dmca-policy"
  add "/_/privacy-policy"
  add "_/contact_us"
  add "/_/submit_content"
end

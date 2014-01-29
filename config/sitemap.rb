# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.gonevirul.com/public"

SitemapGenerator::Sitemap.create do
  Blog.find_each do |blog|
    add blog_path(blog), :lastmod => blog.updated_at
  end
  Photo.find_each do |photo|
    unless photo.landing_picture.url == "/images/original/missing.png"
      add photo.landing_picture.url(:original).gsub("http://d2ki179ibfama0.cloudfront.net","") , :host => "http://d2ki179ibfama0.cloudfront.net", :lastmod => photo.landing_picture_updated_at
    end
    unless photo.blog_picture.url == "/images/original/missing.png"
      add photo.blog_picture.url(:original).gsub("http://d2ki179ibfama0.cloudfront.net","") , :host => "http://d2ki179ibfama0.cloudfront.net", :lastmod => photo.blog_picture_updated_at
    end
  end
  add "/_/about-gonevirul"
  add "/_/dmca-policy"
  add "/_/privacy-policy"
  add "_/contact_us"
  add "/_/submit_content"
end

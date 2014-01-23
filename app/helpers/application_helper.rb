module ApplicationHelper
  def smart_truncate(s, opts = {})
    if opts[:sentences]
      return s.split(/\./).reject{ |s| s.strip.empty? }[0, 2].map{|s| s.strip}.join('. ').html_safe
    end
  end

  def full_title(page_title)
    base_title = "GoneVirul - Get your fix with what's treading red hot on the Web"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end

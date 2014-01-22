module ApplicationHelper
  def smart_truncate(s, opts = {})
    if opts[:sentences]
      return s.split(/\./).reject{ |s| s.strip.empty? }[0, 2].map{|s| s.strip}.join('. ').html_safe
    end
  end
end

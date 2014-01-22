module ApplicationHelper
  def smart_truncate(s, opts = {})
    if opts[:sentences]
      return s.split(/\.(\s|$)+/).reject{ |s| s.strip.empty? }[0, opts[:sentences]].map{|s| s.strip}.join('. ') + '...'
    end
  end
end

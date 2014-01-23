module ApplicationHelper
  def smart_truncate(s, opts = {})
    if opts[:sentences]
      if opts[:description]
        if a.split(".")[0].include? "<"
          if s.split(">")[2].split(".")[0].include? "<"
            return s.split(">")[1].split("<")[0] + s.split(">")[2].split("<")[0] + "..."
          else
             return s.split(">")[2].split(".")[0] + "..."
           end
        else
          return s.split(/\./).reject{ |s| s.strip.empty? }[0, opts[:sentences]].map{|s| s.strip}.join('. ') + "..." 
        end
      else
        return s.split(/\./).reject{ |s| s.strip.empty? }[0, opts[:sentences]].map{|s| s.strip}.join('. ')+".".html_safe 
      end
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

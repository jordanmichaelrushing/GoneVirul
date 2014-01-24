module ApplicationHelper
  def smart_truncate(s, opts = {})
    if s.present?
      if s.split(/\.\?\!/)[0].include? "<"
        if s.split(">")[1].include? "<"
          return s.split("<")[0] + s.split(">")[1].split("<")[0] + "..."
        else
          return s.split("<")[0] + s.split(">")[1].split(/\.\?\!/)[0] + "..."
        end
      elsif s.split(/\.\?\!/)[1].include? "<"
        return s.split(/\.\?\!/)[0] + '.'+ s.split("<")[0] + "..."
      else
        return s.split(/\.\?\!/)[0] + '.'+ s.split(/\.\?\!/)[1] + "..."
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

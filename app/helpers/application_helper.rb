module ApplicationHelper
  def copyright(year)
    now = Time.new.year
    
    if now > year
      "#{year}-#{now}"
    else
      "#{year}"
    end
  end
end

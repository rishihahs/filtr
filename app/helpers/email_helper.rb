module EmailHelper
  def emails(emails)
    if emails.blank?
      ""
    else
      if session[:type] == 'csv'
        emails.join(',')
      elsif session[:type] == 'multi_line'
        emails.join("\n")
      end
    end
  end
  
  def get_emails
    emails = session[:emails]
    session[:emails] = nil
    emails
  end
end

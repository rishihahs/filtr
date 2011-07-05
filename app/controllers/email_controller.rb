class EmailController < ApplicationController
  def index
  end
  
  def filter
    old = params[:text]   
    emails = old.scan(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/i)
    session[:emails] = emails
    session[:type] = params[:type]
    
    respond_to do |format|
        format.html { redirect_to(root_url, :notice => ("No emails found" unless !emails.blank?)) }
        format.js
        format.xml  { render :xml }
    end
  end

end

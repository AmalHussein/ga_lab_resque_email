class HomeController < ApplicationController

def show
end
  
  #POST to send_email
  def send_email
    email_to = params['email_destination']
    email_from = current_user.email
    email_subject = params['email_subject']
    email_body = params['email_body']

    Mail.deliver do
      to email_to
      from email_from
      subject email_subject
      body email_body
    end
    redirect_to root_url, notice: "Email sent"
  end

end
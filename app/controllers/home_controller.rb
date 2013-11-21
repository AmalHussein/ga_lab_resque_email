class HomeController < ApplicationController

	def show
	end


	def send_email 
		Resque.enqueue(SendBackgroundEmail, current_user.email, params)
		redirect_to root_url, notice: "Email sent"
	end 
	########REAL TIME METHOD TO SEND EMAIL, WE HAVE NOW MOVED IT TO  A BACKGROUND JOB ##########
	# # POST to send_email
	# def send_email
	# 	email_to = params["email_destination"]
	# 	email_subject = params["email_subject"]
	# 	email_body = params["email_body"]
	# 	email_from = current_user.email
	# 	Mail.deliver do
 #  		to email_to
 #  		from email_from
 #  		subject email_subject
 #  		body email_body
	# 	end
	# 	redirect_to root_url, notice: "Email sent"
	# end
end
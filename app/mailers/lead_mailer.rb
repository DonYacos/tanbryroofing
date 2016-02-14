class LeadMailer < ActionMailer::Base
  default from: "don@bryceroofing.com"

  def welcome_email(lead)
  	@lead = lead
  	mail(to: @lead.email, subject: "Welcome to Bryce Roofing")  	
  end

  def email_lead(lead)
  	@lead = lead
  	mail(to: "don@bryceroofing.com", subject: "You Have a New Lead")  	
  end
end

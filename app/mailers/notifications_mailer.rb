class NotificationsMailer < ActionMailer::Base
  default from: "no-reply@bryceroofing.com"
  default to: "don@bryceroofing.com"

  def new_message(message)
  	@message = message
  	mail(:subject => "[bryceroofing.com] #{message.subject}")
  end
end

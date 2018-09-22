class Mailer < ActionMailer::Base
  default from: 'mail4hiremath@gmail.com'
  layout 'mailer'

  def user_creation_mail(user)
  	@user = user
  	    mail to: "#{@user.email}", subject: "Signed up successfully , you can login now"
  end


end

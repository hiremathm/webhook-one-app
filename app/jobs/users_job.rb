require 'open-uri'
class UsersJob < ApplicationJob
  queue_as :default

  def perform(user)
  		puts "Hello #{user.name}"
        Mailer.user_creation_mail(user).deliver_now!
        # open('http://localhost:3000/user/webhook')
  end
end

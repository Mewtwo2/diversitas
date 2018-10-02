class UserMailer < ApplicationMailer
  def sign_up(user)
    @user = user
    mail(to: @user.email, subject: 'Thank you for registering on diversitas!')
  end
end

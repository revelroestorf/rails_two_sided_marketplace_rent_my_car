class UserNotifierMailer < ApplicationMailer

  default :from => 'noreply@rentmycar.com'

  def signup_email(user)
    @user = user
    mail(to: @user.email, subject: 'Rent my car - Signup confirmation')
  end

end

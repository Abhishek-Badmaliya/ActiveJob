class UserMailer < ApplicationMailer
  default from: 'abx1769@gmail.com'

  #define method for new user's creation
  def welcome_email
    @user = params[:user]
    mail(to: @user.user_email, subject: 'Welcome to My Awesome Site')
  end
end

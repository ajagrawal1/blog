class UserMailer < ApplicationMailer
  default from: 'notifications@blog.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to My Blog Site')
  end
end

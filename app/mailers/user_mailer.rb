class UserMailer < ApplicationMailer
  def welcome_email(user_id)
    @user = User.find_by(id: user_id)
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome To FashionFeets.com')
  end
end

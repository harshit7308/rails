class UsersController < ApplicationController
  def create
  @user = User.create(user_params)
  if @user.save
         UserMailer.welcome_email.deliver_now
       end
     end

 end

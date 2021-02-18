class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user.password == params[:password]
      UserMailer.with(user: user).welcome_email.deliver_later
      session[:user_id] = user.id
      redirect_to '/articles'
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end

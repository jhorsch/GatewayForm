class SessionsController < ApplicationController

 def show


 end

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
        if params[:remember_me]
            sign_in_permanent user
        else
            sign_in user

        end
        redirect_to root_url


    else
        if user then
            flash[:notice] = "Your password didn't match.  Please try again"
        else
            flash[:notice] = "We didn't recognize your email.  Please try again."
        end
        render 'new'
    end


  end

  def destroy
    sign_out
    redirect_to root_url
  end
end

class UsersController < ApplicationController

  # before_action :set_user, only: [show,update,destory,edit]

def index

end


  def new
    @user = User.new
  end


def create
   @user = User.new(user_params)
   @user.name = @user.name.titlecase
   @user.email = @user.email.downcase
   @user.password_confirmation = @user.password
    if @user.save
        sign_in @user
        UserMailer.registration_confirmation(@user).deliver
        flash[:success] = "Are you ready to explore Chicago through photography?  Before you get started, please confirm your account.  An email was just sent."
        redirect_to @user

     else
      render 'new'
    end
end


def show
    @user = User.find(params[:id])
end


 private
    def user_params
        params.require(:user).permit(:name, :email, :dob, :user_name, :password)

    end

end

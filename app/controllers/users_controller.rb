class UsersController < ApplicationController

  # before_action :set_user, only: [show,update,destory,edit]

def index

end



  def new
    @user = User.new
  end


def create
   @user = User.new(user_params)

    if @user.save
        sign_in @user
        flash[:success] = "Welcome to Mail Chimp!"
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
        params.require(:user).permit(:name, :email, :dob, :user_name, :password, :password_confirmation)

    end

end

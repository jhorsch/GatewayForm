class UserMailer < ActionMailer::Base

  default :from => "jhorsch@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(to: "#{user.name} <#{user.email}>", subject: "HorschGallery Signup Confirmation")
  end



  def password_reset(user)
    @user = user
    @url  =  edit_password_reset_url(@user.password_reset_token)
    # mail :to => user.email, :subject => "HorschGallery.com Password Reset"
    mail(to: user.email, subject: "HorschGallery Password Reset")
  end

end

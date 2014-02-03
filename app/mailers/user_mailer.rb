class UserMailer < ActionMailer::Base

  default :from => "jhorsch@gmail.com"

  def registration_confirmation(user)
    @user = user

    mail(to: "#{user.name} <#{user.email}>", subject: "HorschGallery Signup Confirmation")
  end

  def send_forgotten_password(user)
    @user = user
    mail(to: "#{user.name} <#{user.email}>", subject: "HorschGallery.com - We have a new password for you")

  end

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end

end

class UserMailer < ActionMailer::Base

  default :from => "jhorsch@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(to: "#{user.name} <#{user.email}>", subject: "HorschGallery Signup Confirmation")
  end



  def password_reset(user)
    @user = user
    @url  =  'http://localhost:3000/forgot-password'
    mail :to => user.email, :subject => "HorschGallery.com Password Reset"
  end

end

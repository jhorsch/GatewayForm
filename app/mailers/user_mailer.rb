class UserMailer < ActionMailer::Base

  default :from => "jhorsch@gmail.com"

  def registration_confirmation(user)
    @user = user

    mail(to: user.email, subject: "HorschGallery Signup Confirmation")
  end
end

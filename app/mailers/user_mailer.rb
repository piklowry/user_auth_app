class UserMailer < ActionMailer::Base
  default :from => "plowry05@gmail.com.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def new_photo_message_one(photo, user)
    @photo = photo
    mail to: "plowry05@gmail.com"
  end

  def new_photo_message_all(photo, user)
    @photo = photo
    mail to: user.email
  end

end
 
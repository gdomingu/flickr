class UserMailer < ActionMailer::Base
  default from: "gpad88@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  def activation_needed_email(user)
    @user = user
    @url = "http://localhost:5000/users/#{user.activation_token}/activate"
    mail(:to => user.email,
      :subject => "Welcome to my site")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @user = user
    @url = "localhost:5000/login"

    mail(:to => user.email,
      :subject => "Your account is now activated")
  end
  def reset_password_email(user)
    @user = user
    @url = edit_password_reset_url(user.reset_password_token)
    mail(:to => user.email,
      :subject => "Your password has been reset")
  end
end

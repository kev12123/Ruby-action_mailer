class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.singup_confirmation.subject
  #
  def singup_confirmation(user)
    @user = user

    mail to: user.email , subject: "Sing up confirmation"
  end
end

class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Активация профиля"
  end

  def password_reset
    @greeting = "Здравствуйте"

    mail to: "to@example.org"
  end
end

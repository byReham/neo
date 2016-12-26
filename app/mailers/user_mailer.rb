class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Активация учетной записи"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Сброс пароля"
  end
  
end

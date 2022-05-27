class User < ApplicationRecord
  def self.email
    @user = User.new(user_name: "Keyur P", user_email: "keyurpatoliya21@gmail.com")
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now
    end
  end
end

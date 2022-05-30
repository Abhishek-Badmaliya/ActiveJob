class User < ApplicationRecord
  def self.email
    @user = User.new(user_name: "Abhishek B", user_email: "abbaddy812@gmail.com")
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now
    end
  end

  def self.delayed_email
    @user = User.new(user_name: "Abhishek B", user_email: "abbaddy812@gmail.com")
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later(wait: 1.hour)
    end
  end
end

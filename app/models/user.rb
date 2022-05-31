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

  def self.update_user
    if @user = User.where(id: 16)
      @user.update(user_name: "Abhiii", user_email: "abhiii@test.com")
    else
      @user = User.new(user_name: "ABhiii", user_email: "abbaddy812@gmail.com")
    end
  end
end

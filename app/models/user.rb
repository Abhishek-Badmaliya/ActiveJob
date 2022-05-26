class User < ApplicationRecord
  def self.email
    @user = User.new(user_name: "Abhishek Badmaliya", user_email: "abx1769@gmail.com")
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now
    end
  end
end

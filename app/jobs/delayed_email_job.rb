class DelayedEmailJob < ApplicationJob
  queue_as :default

  def perform()
    User.delayed_email
  end
end

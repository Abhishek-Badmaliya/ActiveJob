class EmailJob < ApplicationJob
  queue_as :default

  def perform()
    User.email
  end
end

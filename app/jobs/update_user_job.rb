class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform()
    User.update_user
  end
end

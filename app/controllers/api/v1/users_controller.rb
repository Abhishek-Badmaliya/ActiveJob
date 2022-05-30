class Api::V1::UsersController < ApplicationController
  def job_email
    EmailJob.perform_now
  end

  def job_later
    DelayedEmailJob.perform_later
  end
end

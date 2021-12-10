# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/citizen_mailer
class CitizenMailerPreview < ActionMailer::Preview
  def welcome_email
    CitizenMailer.with(user: Citizen.first).welcome_email
  end
end

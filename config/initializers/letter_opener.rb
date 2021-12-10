# frozen_string_literal: true

LetterOpener.configure do |config|
  # To overrider the location for message storage.
  # Default value is <tt>tmp/letter_opener</tt>
  config.location = Rails.root.join('spec', 'mailers')
end

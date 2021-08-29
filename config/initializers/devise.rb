# frozen_string_literal: true

Devise.setup do |config|
  config.mailer = 'Users::Mailer'

  config.mailer_sender = 'kameya.entry@gmail.com'

  require 'devise/orm/active_record'

  config.password_length = 6..20

  config.timeout_in = 2.day

  config.confirm_within = 1.days

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 12

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.scoped_views = true
end

require './lita_reminder'
ENVied.require(*ENV['ENVIED_GROUPS'] || [:default, ENV['RACK_ENV']])

Lita.configure do |config|
  config.robot.name = "Standup"
  config.robot.locale = :en
  config.robot.admins = ENV['ROBOT_ADMINS'].split(',')
  config.robot.log_level = :debug

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :hipchat
  config.adapters.hipchat.jid = ENV['HIPCHAT_JID']
  config.adapters.hipchat.password = ENV['HIPCHAT_PASSWORD']
  config.adapters.hipchat.debug = true

  # lita-standup settings
  config.handlers.standup.time_to_respond = ENV['STANDUP_DURATION'].to_i
  config.handlers.standup.summary_email_recipients = ENV['SUMMARY_EMAIL_RECIPIENTS'].split(',')
  config.handlers.standup.name_of_auth_group = :standup_participants
  ## SMTP Mailer settings
  config.handlers.standup.address =              ENV['SMTP_ADDRESS']
  config.handlers.standup.port =                 ENV['SMTP_PORT'].to_i
  config.handlers.standup.domain =               ENV['SMTP_DOMAIN']
  config.handlers.standup.user_name =            ENV['SMTP_USERNAME']
  config.handlers.standup.password =             ENV['SMTP_PASSWORD']
  config.handlers.standup.authentication =       ENV['SMTP_AUTH_METHOD']
  config.handlers.standup.enable_starttls_auto = true
  config.handlers.standup.robot_email_address =  ENV['NO_REPLY_EMAIL']

  ## Redis connection settings
  config.redis[:url] = ENV["REDISTOGO_URL"]
  # config.http.port = ENV["PORT"]
  # config.redis[:host] = "127.0.0.1"
  # config.redis[:port] = 6379
end


case
when Rails.env.development?

  # クラウドIDEの場合は以下をお使いください
  # host = '<hex string>.vfs.cloud9.us-east-2.amazonaws.com' # 自分の環境のホストに変えてください。
  # Rails.application.config.action_mailer.default_url_options = { host: host, protocol: 'https' }

  # localhostで開発している場合は以下をお使いください
  host = 'localhost:3000'
  Rails.application.config.action_mailer.default_url_options = { host: host, protocol: 'http' }

when Rails.env.test?

  Rails.application.config.action_mailer.default_url_options = { host: 'example.com' }

when Rails.env.production?

  Rails.application.config.action_mailer.raise_delivery_errors = true
  Rails.application.config.action_mailer.delivery_method = :smtp

  host = 'sample-app-ssjd.onrender.com'
  Rails.application.config.action_mailer.default_url_options = { host: host }

  ActionMailer::Base.smtp_settings = {
    :port           => 587,
    :address        => 'smtp.mailgun.org',
    :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
    :password       => ENV['MAILGUN_SMTP_PASSWORD'],
    :domain         => host,
    :authentication => :plain,
  }
end

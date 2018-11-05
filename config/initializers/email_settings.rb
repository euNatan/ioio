ActionMailer::Base.smtp_settings = {
    user_name: 'SMTP_Injection',
    password: ENV['SPARKPOST_API_KEY'],
    address: 'smtp.sparkpostmail.com',
    port: 587,
    enable_starttls_auto: true,
    format: :html,
    from: ENV['MAIL_FROM'],
}

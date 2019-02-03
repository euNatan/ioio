class ContactMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def send_proposal(name: name, email: email, message: message)
    @name = name
    @email = email
    @message = message
    attachments.inline["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(to: "ioiocapcom@gmail.com", subject: 'Contato IoioCAPCOM')
  end
end

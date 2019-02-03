class PromocaoMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def promocao(name: name, email: email, whatsapp: whatsapp, message: message )
    @name = name
    @email = email
    @whatsapp = whatsapp
    @message = message
    attachments.inline["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(to: "ioiocapcom@gmail.com", subject: 'Promocao IoioCAPCOM')
  end
end

class ContactMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def send_proposal(name: name, email: email, message: message)
    @name = name
    @email = email
    @message = message
    mail(to: "natanf.ti@gmail.com", subject: 'Contato IoioCAPCOM')
  end
end

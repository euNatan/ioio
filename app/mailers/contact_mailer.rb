class ContactMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def send_proposal
    #ContactMailer.send_proposal(user: "teste").deliver
    #@user = params[:user]
    @url  = 'http://ioiocapcom.com'
    mail(to: "natanf.ti@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end

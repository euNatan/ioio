class ContactMailer < ApplicationMailer
  default from: 'contato@ioiocapcom.com'

  def send_proposal
    @user = params[:user]
    @url  = 'http://ioiocapcom.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

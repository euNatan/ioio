class TradeMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def trade(name: name, email: email, message: message, id: id)
    @item = Item.find(id)
    @name = name
    @email = email
    @message = message
    to = @item.user.email
    attachments.inline["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(to: to, subject: "Gostaria de negociar - #{@item.collection.name} - code:##{@item.code}")
  end
end

class WelcomeController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:email_sender, :trade_sender]
  def index
    @article = Article.all
    @about = About.first
  end

  def about
    @about = About.first
  end

  def contact

  end

  def howtodo
  end

  def wherebuy
  end  

  def email_sender
    email = ContactMailer.send_proposal(name: params[:name], email: params[:email], message: params[:message]).deliver
     redirect_to "/contato", :alert => "Mensagem enviada com sucesso"
  end

  def trade_sender
      email = TradeMailer.trade(name: params[:name], email: params[:email], message: params[:message], id: params[:item_id]).deliver
      redirect_to "/item-trade", :alert => "Mensagem enviada com sucesso"
  end
end

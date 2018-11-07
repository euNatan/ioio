class WelcomeController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :email_sender
  def index
    @article = Article.all
    @about = About.first
  end

  def about
    @about = About.first
  end

  def contact

  end

  def email_sender
    email = ContactMailer.send_proposal(name: params[:name], email: params[:email], message: params[:message]).deliver
     redirect_to "/contato", :alert => "Mensagem enviada com sucesso"
  end
end

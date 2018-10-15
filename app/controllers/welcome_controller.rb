class WelcomeController < ApplicationController
  
  def index
    @article = Article.all
    @about = About.first
  end
end

class WelcomeController < ApplicationController

  def index
    @article = Article.all
    @about = About.first
  end

  def about
    @about = About.first
  end

  def contact
  
  end
end

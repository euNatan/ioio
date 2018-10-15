class WelcomeController < ApplicationController
  def index
    @article = Article.all
    @banners = Banner.all
    @about = About.first
  end
end

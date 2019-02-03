Rails.application.routes.draw do
  get 'user/show'

  get 'collection/show'

  post 'photo/uploader'

  resources :items

  resources :items do
    resources :photos, :only => [:create, :destroy]
  end

  get 'welcome/index'
  root 'welcome#index'

  get 'sobre', to: 'welcome#about'
  get 'contato', to: 'welcome#contact'
  get 'como-funciona', to: 'welcome#howtodo'
  get 'onde-comprar', to: 'welcome#wherebuy'
  post 'contato', to: 'welcome#email_sender'
  post 'promocao', to: 'welcome#promocao'
  post 'trade', to: 'welcome#trade_sender'
  get 'item-trade', to: 'items#trade'
  get 'promo', to: 'welcome#promo'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_scope :user do
  #  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

ShopQiAppExample::Application.routes.draw do

  match 'dashboard'    => 'home#dashboard'

  match 'sessions/new' => 'sessions#new'
  get 'callback'       => 'sessions#create',     :as => :callback
  get 'sign_out'       => 'sessions#destroy',    :as => :sign_out

  root :to             => 'home#index'

end

Rails.application.routes.draw do
  #get 'messages/index'
  devise_for :users
  root to: "rooms#index"
    #root to: "messages#index"だとトップページの表示ではなくトーク画面の表示
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end

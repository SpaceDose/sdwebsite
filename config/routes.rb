Rails.application.routes.draw do

    root 'welcome#index'

    get 'user_list', to: 'pages#users'
    get 'rankings', to: 'pages#rankings'
    get 'convention', to: 'pages#convention'
    get 'ts3Viewer', to:'pages#ts3Viewer'
    get 'faq', to:'pages#faq'

    post 'accept' => 'pages#accept', as: :accept
    post 'delete' => 'pages#delete', as: :delete
    post 'make_admin' => 'pages#make_admin', as: :make_admin

    get 'profile', to:'profile#profile'
    get 'edit_profile', to:'profile#edit_profile'
    post 'show_yourself' => 'profile#show_yourself', as: :show_yourself
    post 'hide_yourself' => 'profile#hide_yourself', as: :hide_yourself
    post 'save_nickname' => 'profile#save_nickname', as: :save_nickname
    post 'save_uniqueid' => 'profile#save_uniqueid', as: :save_uniqueid

    get 'shop', to:'shop#shop'
    get 'inventory', to:'shop#inventory'
    post 'buy' => 'shop#buy', as: :buy

    resources :images, only: :create
    get 'media', to: 'images#new', as: 'new_image'
    get '/media/:id', to: 'images#new', as: 'new_image_id'
    #match 'media/:item_id' => 'images#new', as: 'new_image'

    devise_for :users
    devise_scope :user do
        root to: 'pages#ts3Viewer'
        get 'login', to: 'devise/sessions#new'
        get 'logout', to: 'devise/sessions#destroy'
        get 'signup', to: 'devise/registrations#new'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

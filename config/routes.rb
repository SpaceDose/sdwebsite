Rails.application.routes.draw do

    root 'welcome#index'
    get 'user_list', to: 'pages#users'
    get 'ts3Viewer', to:'pages#ts3Viewer'

    post 'accept' => 'pages#accept', as: :accept
    post 'delete' => 'pages#delete', as: :delete
    post 'make_admin' => 'pages#make_admin', as: :make_admin

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

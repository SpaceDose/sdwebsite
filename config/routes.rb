Rails.application.routes.draw do

    root 'welcome#index'
    get 'ts3Viewer', to:'pages#ts3Viewer'
    devise_for :users

    devise_scope :user do
        root to: 'pages#ts3Viewer'
        get 'login', to: 'devise/sessions#new'
        get 'logout', to: 'devise/sessions#destroy'
        get 'signup', to: 'devise/registrations#new'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :articles do
    resources :comments, only: %i[create]
  end

  resource :contacts, only: %i[new create]

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

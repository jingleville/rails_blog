Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  
  get 'contacts', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'
  

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resources :articles do
    resources :comments, only: %i[create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

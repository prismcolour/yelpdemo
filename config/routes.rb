Rails.application.routes.draw do
  root 'restaurants#index'
  devise_for :users
  resources :restaurants do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

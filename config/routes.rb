Rails.application.routes.draw do
  get 'profile/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :reviews
  end
  root 'events#index'
end

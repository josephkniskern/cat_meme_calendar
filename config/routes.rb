Rails.application.routes.draw do
  resources :users
  resources :cat_calendars
  resources :calendars
  resources :cats

  post '/signup', to: "users#create", as: "signup"
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

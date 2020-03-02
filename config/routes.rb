Rails.application.routes.draw do
  resources :users
  resources :cat_calendars
  resources :calendars
  resources :cats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

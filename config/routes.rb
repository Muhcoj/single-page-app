Rails.application.routes.draw do
  resources :welcome_entries
  resources :galleries
  devise_for :admins
  root to: 'static#homepage'
end

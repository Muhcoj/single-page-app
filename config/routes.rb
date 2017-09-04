Rails.application.routes.draw do
  resources :galleries
  devise_for :admins
  root to: 'static#homepage'
end

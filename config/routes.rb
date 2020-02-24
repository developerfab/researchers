Rails.application.routes.draw do
  resources :announcement, only: [:index]
end

Rails.application.routes.draw do
  resources :posts, only: %i[new create index]
  resources :users, only: %i[new create edit update]
end

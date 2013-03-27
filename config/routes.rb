KekeewinClient::Application.routes.draw do

match 'auth/:provider/callback', to: 'sessions#create'
match 'logout', to: 'sessions#destroy', as: 'logout'

resources :councils

root to: "sessions#new"
end

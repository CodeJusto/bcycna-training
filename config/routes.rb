Rails.application.routes.draw do

resources :students, only: [:index, :new, :create, :update, :destroy]

resources :lessons, only: [:index, :new, :create, :update, :destroy]

resources :courses, only: [:create, :destroy]

resources :sessions, only: [:create, :destroy]

get '/index', to: 'pages#index'

root to: 'pages#index'
end

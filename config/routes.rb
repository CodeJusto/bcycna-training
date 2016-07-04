Rails.application.routes.draw do


resources :students, only: [:index, :new, :create, :update, :destroy]

resources :courses, only: [:index, :create, :destroy] do
  resources :lessons, only: [:index, :new, :create, :update, :destroy, :show]
end

post '/courses/filter', to: 'courses#filter'

resources :sessions, only: [:create, :destroy]

get '/index', to: 'pages#index'

root to: 'pages#index'
end

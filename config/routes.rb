Rails.application.routes.draw do


resources :students, only: [:index, :new, :create, :update, :destroy]

resources :courses, only: [:index, :create, :destroy] do
  resources :lessons, only: [:index, :new, :create, :update, :destroy, :show]
  get '/lessons/:id/next', to: 'lessons#next', as: 'next_lesson'
  get '/lessons/:id/previous', to: 'lessons#previous', as: 'previous_lesson'
end

namespace :admin do
  resources :students
  resources :courses do
    resources :lessons
  end
end 


post '/courses/filter', to: 'courses#filter'

resources :sessions, only: [:create, :destroy]

get '/index', to: 'pages#index'

root to: 'pages#index'
end

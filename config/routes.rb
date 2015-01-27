Rails.application.routes.draw do
  resources :chars

  root to: 'chars#index'
  devise_for :users
  resources :users

  namespace :api, defaults: {format: :json} do
    resources :task_lists, only: [:index] do
      resources :tasks, only: [:index, :create, :update, :destroy]
    end
  end
end

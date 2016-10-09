Rails.application.routes.draw do

  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :subjects, only: [:create, :update, :destroy, :show]
    resources :subject_follows, only: [:index]
    resources :decks, only: [:index, :create, :destroy]
    resources :cards, only: [:index, :create]
  end
  
end

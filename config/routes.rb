Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, except: [ :edit, :update ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :movies, only: [ :index ]
  resources :bookmarks, only: [ :destroy ]
end

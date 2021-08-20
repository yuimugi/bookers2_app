Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  root to: 'homes#top'
  get "/home/about" => "homes#about"
  
  resources :users, only: [:index, :show, :destroy, :edit]
  resources :books
end

Rails.application.routes.draw do
  resources :notes
  devise_for :users, controllers: { registrations: 'registrations' }
  
  authenticated :user do
    root 'projects#index', as: :authenticated_root
  end

  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end

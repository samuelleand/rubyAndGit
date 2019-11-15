Rails.application.routes.draw do
  root 'github_repositories#index'
  resources :repositories
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, { default: :json } do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create]
  end

  root "static_pages#root"
end

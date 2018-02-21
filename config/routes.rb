Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/rails-admin-conf', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'cvms#index'
    resources :cvms
    resources :users
  get 'about' => 'static_pages#about'
  get 'users' => 'users#show'
  get 'contact' => 'static_pages#contact'
end

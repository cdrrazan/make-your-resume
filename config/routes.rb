Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/rails-adminx-conf', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'cvms#index'
    resources :cvms
    resources :users, only: [:show]
  get 'about' => 'static_pages#about'
  get 'my_cv' => 'cvms#show'
  get 'contact' => 'static_pages#contact'
end

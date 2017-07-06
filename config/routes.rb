Rails.application.routes.draw do
  devise_scope :user do
    root :to => 'homes#index'
  end
  # root :to => 'homes#index'
  devise_for :users
  resources :users
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

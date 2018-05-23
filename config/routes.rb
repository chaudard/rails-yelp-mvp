Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end

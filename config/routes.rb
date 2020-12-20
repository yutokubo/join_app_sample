Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "communities#index"
  resources :users

  resources :communities do
    resource :follows, only: [:create, :destroy]
  end

  resources :mypage, only: [:profile] do
    member do
      get 'profile'
      get 'posted_community'
      get 'following_community'
    end
  end


  # get 'rooms_personal/index' => 'rooms_personal#index'
  get 'rooms_personal/show' => 'rooms_personal#show'
  # get 'rooms_personal/create' => 'rooms_personal#create'

  resources :messages, only: :create
end

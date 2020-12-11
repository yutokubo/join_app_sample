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
      get 'followed_community'
    end
  end
end

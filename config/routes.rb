Rails.application.routes.draw do
 
  get 'profile/:id' => 'profile#show', as: :profile

  get 'profile' => 'profile#index'

  get 'profile/show'

  get 'profile/index'

  get 'profile/feed'

  resources :tweets
  devise_for :users

  root 'profile#index'

end
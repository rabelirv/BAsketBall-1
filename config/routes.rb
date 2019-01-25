Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
  as :user do
    get 'signin', to: 'devise/sessions#new', as: :new_user_session
    post 'signin', to: 'devise/sessions#create', as: :user_session
    match 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
  end
#   devise_scope :user do
#   delete 'logout', to: 'devise/sessions#destroy'
# end
  resources :locations
  resources :teams_games
  resources :games
  resources :teams
  post '/teams/:id/users_teams', to: 'users_teams#create', as: 'join_team'
  resources :users_teams


  resources :users
  get 'bballfinder', to: 'bballfinder#welcome'
  root to: "bballfinder#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users
  # devise_for :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  #   get '/users/sign_up' => 'devise/sessions#create'
  # end
end

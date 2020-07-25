Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :battles, only: [ :show ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "declare_home_winner", to: "matches#declare_home_winner"
  post "declare_away_winner", to: "matches#declare_away_winner"
end

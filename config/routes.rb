Rails.application.routes.draw do
  get '/game_scores/top_scores', to: 'game_scores#top_scores'
  
  resources :game_scores
  resources :comments
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

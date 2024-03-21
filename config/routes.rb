Rails.application.routes.draw do
  namespace :nfl do
    resources :players
  end
  resources :season_entry_team_entries
  resources :season_entry_teams
  resources :season_entries
  resources :seasons
  resource :home, only: [:show]
  resources :users
  resources :leagues
  resources :league_memberships

  get "up" => "rails/health#show", as: :rails_health_check

  root "home#show"
end

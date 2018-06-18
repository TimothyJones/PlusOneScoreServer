Rails.application.routes.draw do
  get 'scoreboard', to: 'score_summaries#see_score'
  post 'scoreboard', to: 'score_summaries#save_score'
  resources :score_summaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'scoreboard', to: "scoreboard#index"
  root 'scoreboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "welcome#index"
  resources :monthlies, :metrics
end

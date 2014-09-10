Rails.application.routes.draw do
  resources :monthlies

  resources :metrics

  root "welcome#index"
end

Rails.application.routes.draw do
  root "surveys#new"
  resources :surveys do
    resources :questions
  end
end

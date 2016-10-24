Rails.application.routes.draw do
  root "static_pages#home"
  resources :users, only: [:create, :new, :show]
  get "/about", to: "static_pages#about"
  get "/help", to: "static_pages#help"
  get "/contact", to: "static_pages#contact"
end

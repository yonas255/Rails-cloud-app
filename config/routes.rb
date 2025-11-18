Rails.application.routes.draw do
  resources :posts
  devise_for :users

  # authenticated :user do
  #  root "dashboard#index", as: :authenticated_root
  # end

  root "pages#home"

    get "/run_migration", to: "pages#run_migrations" if Rails.env.production?
end

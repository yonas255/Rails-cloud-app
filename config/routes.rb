Rails.application.routes.draw do
  resources :posts
  devise_for :users

  # authenticated :user do
  #  root "dashboard#index", as: :authenticated_root
  # end

  unauthenticated do
    root "pages#home", as: :unauthenticated_root
  end

  if Rails.env.production?
    get "/run_migration", to: "pages#run_migrations"
  end
end

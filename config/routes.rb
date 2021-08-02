Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :likes, except: :edit
  end
  get "/pages/:page" => "pages#show"
end

Flickr::Application.routes.draw do
 resources :password_resets

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"

  get "users/new"

  resources :albums do
    resources :photos
  end
  resources :users do
    member do
      get :activate
    end
  end
  resources :sessions
   root :to => 'albums#index'

end

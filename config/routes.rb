CVTCRideShare::Application.routes.draw do
  
  devise_for :admins
  devise_for :users
  root :to => 'ride#search'
  
  resources :ride do
    collection do
      get 'search'
      get 'results'
    end
  end

end
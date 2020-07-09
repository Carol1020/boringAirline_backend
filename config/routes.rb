Rails.application.routes.draw do
  root :to => "airplanes#index"
  resources :airplanes, :only => [:index, :new]
  resources :flights, :only => [:index, :new]
  resources :users, :only => [:index, :new, :create]
  resources :reservations, :only => [:index, :new, :create]

  get "/search/:origin/:destination" => "flights#search"
end

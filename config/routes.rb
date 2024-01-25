Rails.application.routes.draw do
  resources :projects

  resources :tasks, only: [], param: :index do
    member do
      delete '(:id)' => "tasks#destroy", as: "destroy"
      get 'new/:scope' => "tasks#new", as: "new"
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

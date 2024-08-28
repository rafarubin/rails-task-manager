Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # root "tasks#tasks"
  # VERB RUTA, to: CONTROLLER#ACTION
  get "tasks", to: "tasks#index"
  # NEW
  get "tasks/new", to: "tasks#new", as: :new_restaurant
  # POST (del New)
  post "tasks", to: "tasks#create"
  # al llamar ':id' llamamos al PARAMS que vamos a crear en el metodo show
  get "tasks/:id", to: "tasks#show", as: :task
end

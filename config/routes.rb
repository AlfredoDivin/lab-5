Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
<<<<<<< HEAD
  get 'newpage/home'
  root 'newpage#home'
=======
  root 'layouts#application'
>>>>>>> 68832e1aa7f9c71836bc8e65d42b7f09753113a2
end

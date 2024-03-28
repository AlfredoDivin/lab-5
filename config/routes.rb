Rails.application.routes.draw do
<<<<<<< HEAD
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "home" => "newpage1#home"
  get "about" => "newpage1#about"
  get "contact" => "newpage1#contact"
  root 'newpage1#index'
=======
  get 'newpage/home'
  root 'newpage#home'
>>>>>>> 86a8e1921dc01695310e3e429ba271d577b55a93
end

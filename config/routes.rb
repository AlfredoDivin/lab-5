Rails.application.routes.draw do
  get 'newpage/home'
  root 'newpage#home'
end

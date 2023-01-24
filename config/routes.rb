Rails.application.routes.draw do
  root 'posts#main'
  resources :posts
end

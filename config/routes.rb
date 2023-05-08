Rails.application.routes.draw do

  # Defines the root path route ("/")
  root to:'pages#home'

  #team page from the pages controller
  get '/team', to: 'pages#team', as: 'team' #Creating a name for the path

  #contact page from the pages controller
  get '/contact', to: 'pages#contact', as: 'contact' 

  #dynamic route with an optional parameter for first_name
  get 'welcome(/:first_name)', to: 'pages#welcome', as: 'welcome' 

  #dynamic route with a required parameter for potin ID
  get 'potin/:id', to:'pages#potin', as: 'potin'

  #dynamic route with a required parameter for auteur title
  get 'potin/author/:user_id', to:'pages#author', as: 'author'
  
end

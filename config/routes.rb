Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    get '/donate', to: 'pages#donate'
    get '/help', to: 'pages#help'
    get '/collaborator', to: 'pages#collaborator'
    get '/contact', to: 'pages#contact'

    get '/collaborator_form', to: 'collaborators#new'
    get '/recipient_form', to: 'recipients#new'
end

Rails.application.routes.draw do
  resources :contacts

  root to: 'contacts#index'
  get '/contacts/:id' =>'contacts#show'
  get '/contacts' =>'contacts#index'
  get '/contacts/new' =>'contacts#new', as: :new
  post '/contacts' =>'contacts#create'

end

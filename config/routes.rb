Rails.application.routes.draw do
  resources :contacts

  root to: 'contacts#index'
  get '/contacts' =>'contacts#index'
  get '/contacts/new' =>'contacts#new'
  post '/contacts' =>'contacts#create'
end

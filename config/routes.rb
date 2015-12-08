Rails.application.routes.draw do
  resources :contacts

  root to: 'contacts#index'
  get '/contacts' =>'contacts#index'
end

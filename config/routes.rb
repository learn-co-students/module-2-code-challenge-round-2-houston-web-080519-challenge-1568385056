Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/guests', to: 'guests#index')

  get "/guests/new", to: "guests#new"

  post "/guests", to: "guests#create"



  get('/episodes', to: 'episodes#index')


  get "/ratings", to: "rating#index"

  get "/ratings/new", to: "rating#new"

  post "/ratings", to: "rating#create"
end

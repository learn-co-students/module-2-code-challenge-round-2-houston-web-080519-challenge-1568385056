Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/guests', to: 'guests#index')
  get('/episodes', to: 'episodes#index')
  get('/episodes/:id', to: 'episodes#show')
  get('/appearances', to: 'appearances#index')
  get('/appearances/new', to:'appearances#new')
  post('/createappearance', to:'appearances#create')
end

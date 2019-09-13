Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/guests', to: 'guests#index')
  get('/episodes', to: 'episodes#index')
  resources :appearances, :episodes, :guests

end

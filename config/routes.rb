Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'top' => 'homes#top'

  resources :books
  post '/books/new', to: 'books#create', as: :create
  post '/books/edit', to: 'bookss#update', as: :update

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/students/:id', to: 'students#show', as: 'student'
  resources :students, only: [:index, :new, :create, :show]
post 'students/new', to: 'students#new'
end

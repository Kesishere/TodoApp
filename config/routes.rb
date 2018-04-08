Rails.application.routes.draw do
  patch 'todos/update'
  post 'todos/create'
  get 'projects/index'
  
  root to:'projects#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

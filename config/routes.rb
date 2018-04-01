Rails.application.routes.draw do
  get 'controller/index'

  get 'controller/update'
  
  post 'controller/create'

  root to: 'controller#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do


  root "demo#index"

  get 'demo/index'
  get 'demo/hello'
  get 'demo/about'
  get 'demo/contact'

  #Instead of using routes as shown below we can use resources to generate our controller routes
  resources :subjects do
    member do
      get :delete
    end
  end
#delete is not included, so we add it manually
  resources :pages do
    member do
      get :delete
    end
  end


  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'

  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'

  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :usuarios, defaults: {format: :json}
  get 'usuario' =>'usuarios#index', defaults: {format: :json}

  post 'usuario/:id' => 'usuarios#update', defaults: {format: :json}

  put 'usuario' => 'usuarios#create', defaults: {format: :json}

  get 'usuario/:id' => 'usuarios#show', defaults: {format: :json}

  delete 'usuario/:id' => 'usuarios#destroy', defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

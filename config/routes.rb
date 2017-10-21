Rails.application.routes.draw do
  resources :keywords, only: %i[index show] do
    collection { post :import }
  end

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'keywords#index'
end

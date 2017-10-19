Rails.application.routes.draw do
  resources :keywords, only: %i[index show] do
    collection { post :import }
  end

  root 'keywords#index'
end

Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:index, :new, :create, :update, :edit]
  end
  resources :doses, only: [:destroy]
  root 'cocktails#index'
end


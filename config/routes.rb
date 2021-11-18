Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy, :update] do
    resources :plant_tags, only: [:new, :create]
  end

  resources :plant_tags, only: [:destroy]

end

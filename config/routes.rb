Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:new, :create]
  end
  resources :plants, only: [:destroy] do
    # Display plant_tags form
    # submit plant_tags form
    resources :plant_tags, only: [:new, :create]
  end
end

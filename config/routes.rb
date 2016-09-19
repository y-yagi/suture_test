Rails.application.routes.draw do
  resources :point_cards do
    resource :add, only: [:edit, :update], controller: 'point_cards/add'
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

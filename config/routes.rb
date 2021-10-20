Rails.application.routes.draw do
  # resources: menu
  get 'menu', to: 'menu#index'
  get 'menu/:item', to: 'menu#show', as: 'menu_item'
  post 'menu/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cafe#index'
end

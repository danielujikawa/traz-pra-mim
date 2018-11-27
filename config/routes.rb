Rails.application.routes.draw do
  devise_for :users
  root to: "routes#home"
  resources :users, only: [] do
    resources :routes
  end

  resources :routes, only: [] do
    collection do                       # collection => no restaurant id in URL
      post 'search', to: 'routes#search'    # RestaurantsController#top
    end
  end

  # resoureces :routes do
  #   resources :orders
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'users/new', to: 'users#new', as: :new_user
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#show', as: :user
  # get 'users/:id/edit', to: 'users#edit', as: :edit_user
  # patch 'users/:id', to: 'users#update'
  # # delete 'users/:id', to: 'users#destroy'
  # get 'routes/index', to: 'routes#index'
  # get 'routes/new', to: 'routes#new', as: :new_route
  # post 'routes', to: 'routes#create'
  # get 'routes/:id', to: 'routes#show', as: :route
  # get 'routes/:id/edit', to: 'routes#edit', as: :edit_route
  # patch 'routes/:id', to: 'routes#update'
  # delete 'routes/:id', to: 'routes#destroy'

  # get 'orders/index', to: 'orders#index'
  # get 'orders/new', to: 'orders#new', as: :new_order
  # post 'orders', to: 'orders#create'
  # get 'orders/:id', to: 'orders#show', as: :order
  # get 'orders/:id/edit', to: 'orders#edit', as: :edit_order
  # patch 'orders/:id', to: 'orders#update'
  # delete 'orders/:id', to: 'orders#destroy'

end


# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root to: "cocktails#index"
#   resources :cocktails, only: [:index, :show, :new, :create] do
#     resources :doses, only: [:create]
#     resources :reviews, only: [:create]
#   end
#   resources :doses, only: [:destroy]
# end

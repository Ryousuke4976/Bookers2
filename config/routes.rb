Rails.application.routes.draw do
 devise_for :users, controllers: {
        registrations: 'users/registrations'
}

   resources :users, only: [:show, :index]

   resources :books, only: [:show, :index, :update, :create, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

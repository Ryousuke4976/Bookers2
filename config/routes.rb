Rails.application.routes.draw do
 devise_for :users, controllers: {
        registrations: 'users/registrations'
}

   resources :users, only: [:show, :index, :edit, :update]

   resources :books, only: [:show, :index, :edit, :update, :create, :destroy]

   get 'home/about' => 'home#about', as: "about"

   get '/' => 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
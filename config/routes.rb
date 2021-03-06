Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # users
      resources :users, only:[:create] do
        get :current_user, action: :show, on: :collection
      end

      # login, logout
      resources :user_token, only: [:create] do
        delete :destroy, on: :collection
      end
      
      resources :projects, only: [:index, :create, :destroy]
      resources :tasks, only: [:index, :create, :update, :destroy]
    end
  end
end

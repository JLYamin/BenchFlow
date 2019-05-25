Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'}
  resources :users, :controller => 'users', :only => [:index, :edit, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

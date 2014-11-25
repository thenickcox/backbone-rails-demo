Rails.application.routes.draw do

  resources :users do
    resources :albums
  end

  devise_for :users, controllers: { registration: 'users/registrations' }, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end

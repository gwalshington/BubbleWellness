Rails.application.routes.draw do
  resources :races
  resources :genders
  resources :therapy_budgets
  resources :therapy_integrations
  resources :therapy_types
  resources :therapy_reasons
  resources :therapy_formats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get 'welcome/index'
  get 'home', to: 'user_dash#index', as: 'user_dash'
  get 'therapist_portal', to: 'welcome#therapist', as: 'therapist_dash'
  get 'admin', to: 'welcome#admin', as: 'admin'

  root 'welcome#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'new_therapist', to: 'users/registrations#new_therapist', as: 'new_therapist'
  end


end

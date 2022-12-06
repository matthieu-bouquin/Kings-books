Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books
  resources :bookmarks
  resources :contacts
  resources :news
  resources :abouts
  resources :customer_portal_sessions, only: [:create] 
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
end
end
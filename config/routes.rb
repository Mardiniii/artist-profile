Rails.application.routes.draw do
  get 'events/new'

  get 'events/edit'

  get 'events/index'

  devise_for :users

  root 'pages#home'
  get 'coming_events' => 'pages#events'
  get 'blog' => 'pages#blog'
  get 'contact' => 'pages#contact_us'
  resources :events
  devise_scope :user do
    get "/admin" => "devise/sessions#new"
  end
end

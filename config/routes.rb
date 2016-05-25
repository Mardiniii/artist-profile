Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get 'coming_events' => 'pages#events'
  get 'blog' => 'pages#blog'
  get 'contact' => 'pages#contact_us'
  get 'pictures' => 'pages#gallery'
  resources :events
  resources :galleries
  resources :blog_entries
  resources :music_tracks
  resources :images
  devise_scope :user do
    get "/admin" => "devise/sessions#new"
  end
end

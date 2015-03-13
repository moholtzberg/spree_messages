Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :messages, only: [:index, :show] do
      member do
        get :complete
      end
    end
    resources :message_settings, only: [:index, :show, :new, :edit] do
      # not sure what do here
    end
  end
  get '/contact' => 'messages#new'
  post '/messages' => 'messages#create'
end

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'all_events', to: 'bullets#all_events'
      get 'all_tasks', to: 'bullets#all_tasks'
      get 'all_notes', to: 'bullets#all_notes'
      resources :projects do
        resources :bullets
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

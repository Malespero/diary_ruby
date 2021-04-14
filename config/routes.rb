require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  
  mount Sidekiq::Web => '/sidekiq'
  get 'job/submit/:who/:message', to: 'job#submit'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :diarys do 
    resources :notes
  end
  root "diarys#index"
end

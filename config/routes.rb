Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :diarys do 
    resources :notes
  end
  root "diarys#index"
end
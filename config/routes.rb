Rails.application.routes.draw do
  resources :spindle_subtypes
  resources :spindles
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  get 'spindles/show'

  get 'spindles_expertshow' => "spindles#expertshow"

  resources :spindles do
    collection do 
      post "expertshow"
    end
  end
end

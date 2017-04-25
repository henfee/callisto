Rails.application.routes.draw do
  resources :assessment_events
  resources :media_events
  resources :caliper_events do
    collection do
      get 'clear'
    end
  end
  resources :outcome_events
  resources :assessment_item_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

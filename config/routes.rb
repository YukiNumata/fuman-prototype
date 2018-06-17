Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'fumans#index'
  resources :fumans do
  end
end

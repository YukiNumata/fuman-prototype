Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'fumans#top'
  get "/index" => "fumans#index"

  resources :fumans do
    resources :likes do
    end
    resources :dislikes do
    end
  end

end

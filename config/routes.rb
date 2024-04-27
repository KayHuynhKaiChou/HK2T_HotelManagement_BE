Rails.application.routes.draw do
  namespace :api do
    namespace :admin do
      resources :user , :crew
      get 'clothes/preview', to: 'clothes#preview'
    end
  end
end

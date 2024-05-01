Rails.application.routes.draw do
  namespace :api do
    namespace :user do
      post 'sign_in', to: 'user#sign_in'
      post 'sign_up', to: 'user#sign_up'
      put 'change_password', to: 'user#change_password'
    end
  end
end

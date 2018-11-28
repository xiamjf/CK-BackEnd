# frozen_string_literal: true

Rails.application.routes.draw do
  resources :responses, except: %i[new edit]
  resources :user_questions, except: %i[new edit]
  resources :questions, except: %i[new edit]

  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end

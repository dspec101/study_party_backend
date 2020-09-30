Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :answers
      resources :comments
      resources :parties
      resources :questions
      resources :party_questions
      get '/previous-answers/:id', to: 'questions#question_answers'
      get '/propper-user/:id', to: 'answers#answer_user'
      get '/comment-user/:id', to: 'comments#comment_user'

    end
  end
end


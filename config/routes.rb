Rails.application.routes.draw do
  #ルートpassを受け取った際に、postsコントローラーのindexアクションを使用する
  root to: "questions#index"
  #questionsというurlを受け取った際のアクションとして、index,new,createのいずれかアクションを許可
  resources :questions, only: [:index, :new, :create]
end

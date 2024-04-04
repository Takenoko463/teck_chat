Rails.application.routes.draw do
  #ルートpassを受け取った際に、postsコントローラーのindexアクションを使用する
  root to: "questions#index"
  #questionsというurlを受け取った際のアクションとして、index,new,create,showのいずれかアクションを許可
  resources :questions, only: [:index, :new, :create]
  #questionの詳細表示から、answerコントローラーを操作可能
  resources :questions, only: :show do
    resources :answers, only: [:index, :new, :create]
  end
end

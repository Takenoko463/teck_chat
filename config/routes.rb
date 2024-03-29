Rails.application.routes.draw do
  #ルートpassを受け取った際に、postsコントローラーのindexアクションを使用する
  root to: "questions#index"
  #questions/newを受け取った際にnewコントローラーのnewアクションを使用する
  get "questions/new", to: "questions#new"
end

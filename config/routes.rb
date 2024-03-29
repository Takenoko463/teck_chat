Rails.application.routes.draw do
  #ルートpassを受け取った際に、postsコントローラーのindexアクションを使用する
  root to: "questions#index"
end

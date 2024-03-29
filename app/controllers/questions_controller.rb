class QuestionsController < ApplicationController
  def index # indexアクションを定義した
    @questions = Question.all # すべてのレコードを@questionsに代入
  end
end

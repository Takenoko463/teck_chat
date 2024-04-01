class QuestionsController < ApplicationController
  def index # indexアクションを定義した
    @questions = Question.all # すべてのレコードを@questionsに代入
  end

  def new
  end
end

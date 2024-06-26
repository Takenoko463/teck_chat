class QuestionsController < ApplicationController
  def index # indexアクションを定義した
    @questions = Question.all # すべてのレコードを@questionsに代入
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to root_path
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :user_name)
  end
end

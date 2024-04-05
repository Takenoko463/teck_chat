class AnswersController < ApplicationController
  def create
    @answer = Answer.create(answer_param)
    redirect_to question_path(@answer.question_id)
  end

  private

  def answer_param
    params.require(:answer).permit(:content, :user_name).merge(question_id: params[:question_id])
  end
end

class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])

    @answer = Answer.new(answer_params)

    @answer.question = @question

    if @answer.save
      redirect_to "/questions/#{@question.id}"
    else
      render :template => 'questions/show'
    end

  end

  def answer_params
    params.require(:answer).permit(:description)
  end

end

class BestAnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])

    @best_answer = BestAnswer.new(best_answer_params)

    @best_answer.question = @question

    if @best_answer.save
      redirect_to "/questions/#{@question.id}"
    else
      render :template => 'questions/show'
    end

  end

  def best_answer_params
    params.require(:answer).permit(:question_id, :answer_id)
  end

end

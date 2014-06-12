class QuestionsController < ApplicationController

  # GET /questions
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  # GET /questions/1
  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # POST /questions
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question, notice: 'Question successfully created.'
    else
      render action: 'new'
    end

  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def question_params
    params.require(:question).permit(:title, :description)
  end

end

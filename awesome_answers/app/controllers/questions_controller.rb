class QuestionsController < ApplicationController

  before_action :find_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def new
    @question = Question.new
  end

  def create
    # "question":{"title":"111","body":"13423432"},"commit":"Create Question"
    #in the line below we are using the "strong parameters" feature of Rails in the line we are requiring that the params hash has a key called question and we are only allowing the title and body by fetched
    # question = Question.new title: params[:question][:title],
    #                         body: params[:question][:body]
    @question = Question.new question_params
    @question.user = current_user
    if @question.save
      # redirect_to question_path({id: @question.id})
      # flash[:notice] = "Question created!"
      redirect_to question_path(@question), notice: "Question created!"
    else
      flash[:alert] = "question not created!"
      render :new
    end
  end

  def show
    # @question = Question.find params[:id]
    # @question.view_count += 1
    # @question.save
    # question_params = params.require(:question).permit(:view_count)
    @question.increment!(:view_count)
    @answer = Answer.new
  end

  def index
    @questions = Question.order(created_at: :desc)
  end

  def edit
      # @question = Question.find params[:id]
  end

  def update
    # @question = Question.find params[:id]
    if @question.update question_params
      redirect_to question_path(@question), notice: "Question updated!"
    else
      render :edit
    end
  end

  def destroy
    # @question = Question.find params[:id]
    @question.destroy
    redirect_to questions_path, notice: "Question deleted!"
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :category_id)
  end

  def find_question
    @question = Question.find params[:id]
  end

  def authenticate_user!
    redirect_to new_session_path, alert: "Please sign in" unless user_signed_in?
  end

end
# bin/rails d controller ... to delete

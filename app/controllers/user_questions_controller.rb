class UserQuestionsController < ApplicationController
  before_action :set_user_question, only: [:show, :update, :destroy]

  # GET /user_questions
  def index
    @user_questions = UserQuestion.all

    render json: @user_questions
  end

  # GET /user_questions/1
  def show
    render json: @user_question
  end

  # POST /user_questions
  def create
    @user_question = UserQuestion.new(user_question_params)

    if @user_question.save
      render json: @user_question, status: :created, location: @user_question
    else
      render json: @user_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_questions/1
  def update
    if @user_question.update(user_question_params)
      render json: @user_question
    else
      render json: @user_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_questions/1
  def destroy
    @user_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_question
      @user_question = UserQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_question_params
      params.require(:user_question).permit(:user_id, :question_id)
    end
end

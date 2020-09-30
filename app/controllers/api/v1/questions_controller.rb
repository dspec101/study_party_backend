class Api::V1::QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions, except: [:created_at, :updated_at]
    end

    def show
       questions = Question.find(params[:id])
       render json: question
    end

    def question_answers
        question = Question.find(params[:id])
        render json: question.answers.as_json(methods: [:formatted_time])
    end

    def create
      question = Question.create(party_params)

        render json: question
    end

    def destroy
        question = Question.find(params[:id])
        question.destroy
    end

    def update
        question = Question.find(params[:id])
        question.update(question_params)
     end

    private

    def party_params
        params.require(:question).permit(:type, :description, :options, :right_answer)
    end
end
  
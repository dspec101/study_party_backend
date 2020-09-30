class Api::V1::AnswersController < ApplicationController
    
    def index
        answers = Answer.all
        render json: answers.as_json(methods: [:formatted_time])
    end

    def show
        answer = Answer.find(params[:id])
        render json: answer
    end

    def answer_user
        answer = Answer.find(params[:id])
        render json: answer.user
    end

    def create
        answer = Answer.create(answer_params)
        render json: answer
    end

    def destroy
        answer = Answer.find(params[:id])
        answer.destroy
    end

    def update
        answer = Answer.find(params[:id])
        answer.update(answer_params)
        render json: answer
     end


    private

    def answer_params
        params.require(:answer).permit(:user_id, :question_id, :selection, :explanation, :likes)
    end



end

class Api::V1::PartyQuestionsController < ApplicationController

    def index
        party_questions = PartyQuestion.all
        render json: party_questions, except: [:created_at, :updated_at]
    end

    def show
        book = PartyQuestion.find(params[:id])
        render json: party_question
    end

    def create
        party_question = PartyQuestion.create(party_question_params)

        render json: party_question
    end

    def destroy
        party_question = PartyQuestion.find(params[:id])
        party_question.destroy
     end

    private

    def party_question_params
        params.require(:party_question).permit(:party_id, :answer_id)
    end

end

require 'twilio-ruby'
class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments, except: [:updated_at]
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def comment_user
        comment = Comment.find(params[:id])
        render json: comment.user
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
        # account_sid = 'AC148814fdf1fb0332fc6e26872b944a9f'
        # auth_token = 'ca1472db6a7875fded77865840e4cc0d'
        # client = Twilio::REST::Client.new(account_sid, auth_token)
        # from = '+14842287156' # Your Twilio number
        # to = '+19783176594' # Your mobile phone number
        # client.messages.create(
        # from: from,
        # to: to,
        # body: "Hey friend! Your study party room is hot! Someone just commented: #{comment.description} Join the learning!"
        # )
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    # def update
    #     answer = Answer.find(params[:id])
    #     answer.update(answer_params)
    #  end


    private

    def comment_params
        params.require(:comment).permit(:user_id, :party_id, :description)
    end
end

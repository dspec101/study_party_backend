class Api::V1::PartiesController < ApplicationController

    def index
        parties = Party.all
        render json: parties, except: [:created_at, :updated_at]
    end

    def show
        party = Party.find(params[:id])
        render json: party
    end

    def create
        party = Party.create(party_params)

        render json: party
    end

    def destroy
        party = Party.find(params[:id])
        party.destroy
    end

    def update
        party = Party.find(params[:id])
        party.update(party_params)
     end

    private

    def party_params
        params.require(:party).permit(:title, :description)
    end

end

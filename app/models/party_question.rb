class PartyQuestion < ApplicationRecord
        belongs_to :party
        belongs_to :question
    end
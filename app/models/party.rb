class Party < ApplicationRecord
    has_many :comments
    has_many :party_questions
    has_many :questions, through: :party_questions
end

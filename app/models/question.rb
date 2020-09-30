class Question < ApplicationRecord
    has_many :answers
    has_many :party_questions
    has_many :parties, through: :party_questions
    has_many :users, through: :answers

    def as_json(options = {})
    super(methods: [:formatted_time])
end

def formatted_time
    self.created_at.strftime("%m/%d/%Y")
end

end

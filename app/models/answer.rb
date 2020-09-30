class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :question

    def as_json(options = {})
        super(methods: [:formatted_time])
    end

    def formatted_time
        self.created_at.strftime("%m/%d/%Y")
    end

end

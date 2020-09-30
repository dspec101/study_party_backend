class CreatePartyQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :party_questions do |t|
      t.integer :question_id
      t.integer :party_id

      t.timestamps
    end
  end
end

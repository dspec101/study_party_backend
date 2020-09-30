class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :selection
      t.string :explanation
      t.integer :likes

      t.timestamps
    end
  end
end

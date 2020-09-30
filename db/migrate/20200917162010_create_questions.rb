class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :description
      t.string :A
      t.string :B
      t.string :C
      t.string :D
      t.string :E
      t.string :right_answer

      t.timestamps
    end
  end
end

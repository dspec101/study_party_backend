class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :category
      t.timestamps
    end
  end
end

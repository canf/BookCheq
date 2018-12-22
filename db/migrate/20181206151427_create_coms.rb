class CreateComs < ActiveRecord::Migration[5.2]
  def change
    create_table :coms do |t|
      t.integer :user_id
      t.text :body
      t.integer :book_id
      t.string :rating
      t.timestamps
    end
  end
end

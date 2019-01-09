class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :user_id
      add_foreign_key :books, :users
      t.timestamps
    end
  end
end

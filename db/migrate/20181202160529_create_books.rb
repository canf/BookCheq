class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :user_id
      remove_foreign_key :books, :users
      add_foreign_key :books, :users, dependent: :delete
      t.timestamps
    end
  end
end

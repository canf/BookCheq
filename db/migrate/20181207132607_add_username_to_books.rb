class AddUsernameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :username, :string
  end
end

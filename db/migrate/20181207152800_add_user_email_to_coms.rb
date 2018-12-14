class AddUserEmailToComs < ActiveRecord::Migration[5.2]
  def change
    add_column :coms, :user_email, :string
  end
end

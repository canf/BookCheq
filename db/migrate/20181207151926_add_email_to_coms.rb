class AddEmailToComs < ActiveRecord::Migration[5.2]
  def change
    add_column :coms, :email, :string
  end
end

class AddTagNameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :tag_name, :string
  end
end

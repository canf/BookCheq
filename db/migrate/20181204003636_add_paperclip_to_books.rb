class AddPaperclipToBooks < ActiveRecord::Migration[5.2]
  def change
    add_attachment :books, :image
  end
end

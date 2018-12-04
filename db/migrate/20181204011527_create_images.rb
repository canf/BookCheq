class CreateImages < ActiveRecord::Migration[5.2]
  def change
  create_table :images do |t|
    t.string :image_file_name
    t.string :image_content_type
    t.string :image_file_size
    t.datetime :image_updated_at
    t.timestamps
  end
end
end




class Book < ApplicationRecord
  has_attached_file :image,
  :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
:url => "/system/:attachment/:id/:style/:filename",
:styles => { :medium => "500x500>", :thumb => "120x90#" },
:default_url => "path to default image"
                  validates_attachment_content_type :image, content_type: /\Aimage/






  belongs_to :user
    has_many :libraries
    has_many :added_books, through: :libraries, source: :user


end

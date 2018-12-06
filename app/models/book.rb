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
    has_many :coms
    has_many :taggings
    has_many :tags, through: :taggings

    def self.tagged_with(name)
    Tag.find_by!(name: name).books
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end


end

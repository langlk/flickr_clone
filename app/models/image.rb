class Image < ActiveRecord::Base
  belongs_to :user

  has_attached_file :photo, :styles => { :medium => "600x600>", :thumb => "300x300#" }, :default_url => "/images/:style/missing.jpeg"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
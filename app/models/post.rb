class Post < ActiveRecord::Base

has_attached_file :image, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	:title
	:body
	:category_id
	:author_id
	:image_file_name
	:image_content_type
	:image_file_size
	:image_updated_at

	belongs_to :category

end



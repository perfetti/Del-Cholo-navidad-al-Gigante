class Post < ActiveRecord::Base



	:title
	:body
	:category_id
	:author_id

	belongs_to :admin_user
	belongs_to :category
	has_many :assets
	has_many :post_comments, :dependent => :destroy
	accepts_nested_attributes_for :assets, :allow_destroy => true

end



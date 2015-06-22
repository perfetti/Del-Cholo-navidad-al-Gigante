ActiveAdmin.register Post do
 permit_params :permitted, :attributes, :title, :body, :category_id, :admin_user_id, assets_attributes: [:image]
	menu :label => "Blog Posts"

  # Don't forget to add the image attribute (here thumbnails) to permitted_params
    # def permit_params
    #   permit_params :permitted, :attributes, :title, :body, :category_id, :admin_user_id, :image
    # end 


  form :html => { :multipart => true } do |f|
    f.inputs 'Details' do
      f.input :category
      f.input :admin_user
      f.input :title
      f.input :body
      f.has_many :assets do |asset|
        asset.input :image, as: :file, :label => "Image",:hint => asset.object.image.nil? ? asset.template.content_tag(:span, "No Image Yet") : asset.template.image_tag(asset.object.image.url(:thumb))
        asset.input :_destroy, :as=>:boolean, :required => false, :label => 'Remove image'
      end 
    end
    f.actions
  end

 
  show do |post|
      attributes_table do
        row :title
        row :admin_user_id
        row :category
        row :body
        row "Assets" do 
            ul do
              post.assets.each do |asset|
            li do 
              image_tag(asset.image.url(:thumb))
            end
          end
        end
    end
        # Will display the image on show object page
      end
    end


# show do |product|
#   attributes_table do
# row "Images" do
#    ul do
#     product.images.each do |img|
#       li do 
#         image_tag(img.image.url(:small))
#       end
#     end
#    end
# end




  index do

    column :title
    column "Author", :admin_user
    column :admin_user_id
    column :category
    column :created_at
    actions
  end

#    permit_params do
#   permitted = [:permitted, :attributes, :title, :body, :category_id, :admin_user_id, :assets_attributes]

# #   permitted << :other if resource.something?
# #   permitted
# end
# def post_params
#   params.require(:post).permit(:title, :body, :category_id, :admin_user_id, assets_attributes: [:image])
# end
# def asset_params
#   params.require(:asset).permit(:image)
# end
end

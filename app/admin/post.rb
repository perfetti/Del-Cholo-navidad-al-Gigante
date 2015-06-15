ActiveAdmin.register Post do
  permit_params :permitted, :attributes, :title, :body, :category_id, :admin_user_id, :image
	menu :label => "Blog Posts"

  # Don't forget to add the image attribute (here thumbnails) to permitted_params
    # def permit_params
    #   permit_params :permitted, :attributes, :title, :body, :category_id, :admin_user_id, :image
    # end 
 
  form :html => { :multipart => true } do |f|
    f.inputs 'Details' do
      f.input :image, :required => false, :as => :file
      f.input :title
      f.input :body
      f.input :category
    end
    f.actions
  end
 
  show do |ad|
      attributes_table do
        row :title
        row :category
        row :body
        row :image do
          image_tag(ad.image.url(:thumb))
        end
        # Will display the image on show object page
      end
    end


  index do

    column :title
    column "Author", :admin_user
    column :admin_user_id
    column :category
    column :created_at
    actions
  end

end
 



  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #


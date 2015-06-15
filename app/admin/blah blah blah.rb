ActiveAdmin.register Post do
  
	menu :label => "Blog Posts"


  index do

    column :title
    column "Author", :admin_user
    column :admin_user_id
    column :category
    column :created_at
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :title
    f.input :body
    f.input :category

    f.input :image, required: false
  end
  f.actions




end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
    permitted = [:permitted, :attributes, :title, :body, :category_id, :admin_user_id, :image]
  #   permitted << :other if resource.something?
  #   permitted
  end


end

ActiveAdmin.register Post do

  menu :label => "Blog Posts"

 
  form :html => { :multipart => true } do |f|
    f.inputs "Project Details" do
      f.input :title
      f.input :body
      f.input :category
      f.input :image, :required => false, :as => :file
      # Will preview the image when the object is edited
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


  permit_params do
    permitted = [:permitted, :attributes, :title, :body, :category_id, :admin_user_id]
  #   permitted << :other if resource.something?
  #   permitted
  end

end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #


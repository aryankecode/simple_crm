ActiveAdmin.register Customer do
    permit_params :full_name, :phone_number, :email, :notes, :image
  
    remove_filter :image_attachment
    remove_filter :image_blob
  
    form do |f|
      f.inputs "Customer Details" do
        f.input :full_name
        f.input :phone_number
        f.input :email
        f.input :notes
        f.input :image, as: :file
      end
      f.actions
    end
  
    index do
      selectable_column
      id_column
      column :full_name
      column :phone_number
      column :email
      column :notes
      column "Profile Image" do |customer|
        if customer.image.attached?
          image_tag url_for(customer.image), width: 50
        else
          "No Image"
        end
      end
      actions
    end
  
    show do
      attributes_table do
        row :full_name
        row :phone_number
        row :email
        row :notes
        row "Profile Image" do |customer|
          if customer.image.attached?
            image_tag url_for(customer.image), width: 150
          else
            "No Image Uploaded"
          end
        end
      end
    end
  end
  
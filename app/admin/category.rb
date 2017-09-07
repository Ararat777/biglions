ActiveAdmin.register Category do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :name, :meta_title, :meta_description, :parent_id 
  menu label: 'Категории',priority: 1
  
  show do
    attributes_table do
      row :title
      row :name
      row :meta_title
      row :meta_description
      row :parent
    end
    table_for category.pages do
      column :title
      column :name do |page|
        link_to page.name, admin_page_path(page)
      end
    end
  end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

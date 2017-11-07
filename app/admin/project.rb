ActiveAdmin.register Project do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
 index do
   selectable_column
   column :name
   column :phone
   column :email
   column :document do |project|
     if project.document.path
     link_to File.basename(project.document.path), biglionsadmin13_project_file_path(project.id) 
     end
   end
   column :form_path
   column :comment
   column :created_at
   column :about_project
   column :site_link
   column :about_work
 end
  
  controller do
    def download_file
      @project = Project.find(params[:id])
      send_file @project.document.path, x_sendfile: true
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

ActiveAdmin.register Page do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  menu label: 'Страницы',priority: 2
  permit_params :title, :name, :nav_name, :category_id
  index do
    selectable_column
    column :title
    column 'Название',:name
    column 'Навигационное название',:nav_name
    column 'Категория',:category
    actions
  end
  
  filter :category,label: 'Категория'
  filter :title
  filter :name,label: 'Название'
  filter :nav_name,label: 'Навигационное название'
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

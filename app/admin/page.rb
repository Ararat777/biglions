ActiveAdmin.register Page do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  menu label: 'Страницы',priority: 2
  permit_params :title, :name, :nav_name, :category_id, :priority,:active
  index do
    selectable_column
    column :title
    column 'Название',:name
    column 'Навигационное название',:nav_name
    column 'Категория',:category
    column 'Приоритет', :priority
    actions
  end
  
  filter :category,label: 'Категория'
  filter :title
  filter :name,label: 'Название'
  filter :nav_name,label: 'Навигационное название'
  
  show do
    attributes_table do
      row :title
      row :name
      row :nav_name
      row :priority
      row :category
    end
    table_for page.indents do
      column :title
      column :image_url
      column :body
      column :actions do |indent|
        span link_to "Edit", edit_biglionsadmin13_indent_path(indent)
        span link_to "Delete", biglionsadmin13_indent_path(indent),method: :delete
      end
    end
  
  end
  
  controller do
    def create
      @page = Page.new(permitted_params[:page])
      
      if @page.save
        redirect_to biglionsadmin13_category_path(@page.category)
      else
        render :new
      end
    end
    
    def update
      @page = Page.find(params[:id])
      
      if @page.update(permitted_params[:page])
        redirect_to biglionsadmin13_category_path(@page.category)
      else
        render :edit
      end
    end
    
    def destroy
      @page = Page.find(params[:id])
      @page.destroy
      
      redirect_to biglionsadmin13_category_path(@page.category)
    end
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

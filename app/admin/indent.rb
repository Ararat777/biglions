ActiveAdmin.register Indent do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :image_url, :body, :page_id
  menu label: 'Тексты',priority: 3
  
  controller do
    def create
      @indent = Indent.new(permitted_params[:indent])
      
      if @indent.save
        redirect_to admin_page_path(@indent.page)
      else
        render :new
      end
    end
    
    def update
      @indent = Indent.find(params[:id])
      
      if @indent.update(permitted_params[:indent])
        redirect_to admin_page_path(@indent.page)
      else
        render :edit
      end
    end
    
    def destroy
      @indent = Indent.find(params[:id])
      @indent.destroy
      
      redirect_to admin_page_path(@indent.page)
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

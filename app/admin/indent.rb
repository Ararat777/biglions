ActiveAdmin.register Indent do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :image_url, :body, :page_id, :case_id
  menu label: 'Тексты',priority: 3
  
  controller do
    def create
      @indent = Indent.new(permitted_params[:indent])
      
      if @indent.save
        if @indent.page
        redirect_to biglionsadmin13_page_path(@indent.page)
        else
          redirect_to biglionsadmin13_case_path(@indent.case)
        end
      else
        render :new
      end
    end
    
    def update
      @indent = Indent.find(params[:id])
      
      if @indent.update(permitted_params[:indent])
        if @indent.page
        redirect_to biglionsadmin13_page_path(@indent.page)
        else
          redirect_to biglionsadmin13_case_path(@indent.case)
        end
      else
        render :edit
      end
    end
    
    def destroy
      @indent = Indent.find(params[:id])
      @indent.destroy
      
      redirect_to biglionsadmin13_pages_path
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

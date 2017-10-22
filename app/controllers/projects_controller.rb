class ProjectsController < ApplicationController
  def new
  end
  def create
    @project = Project.new(project_params)
    if @project.save
      #ProjectMailer.send_project_mail(@project).deliver
      @form_path = @project.form_path
      respond_to do |format|
        format.js{}
      end
    else
      respond_to do |format|
        format.js{render :template => 'projects/error.js.erb', :layout => false}
      end
    end
  end
  
  
  private
  
  def project_params
    params.require(:projects).permit(:name,:phone,:comment,:email,:document, :form_path,:about_project,:about_work,:site_link)
  end
end

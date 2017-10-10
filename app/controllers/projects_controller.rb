class ProjectsController < ApplicationController
  def new
  end
  def create
    @project = Project.new(project_params)
    if @project.save
      #ProjectMailer.send_project_mail(@project).deliver
      respond_to do |format|
        format.js{}
      end
    else
      respond_to do |format|
        format.js{}
      end
    end
  end
  
  private
  
  def project_params
    params.require(:projects).permit(:name,:phone,:comment,:email,:document, :form_path)
  end
end

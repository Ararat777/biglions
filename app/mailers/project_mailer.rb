class ProjectMailer < ApplicationMailer
  def send_project_mail(project)
    @project = project
    mail(to: "info@biglions.org", subject: "Заявка на обсуждение")
  end
end

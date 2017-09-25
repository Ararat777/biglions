class ProjectMailer < ApplicationMailer
  def send_project_mail(project)
    @project = project
    mail(to: "danielpogosyan18@gmail.com", subject: "Заявка на обсуждение")
  end
end

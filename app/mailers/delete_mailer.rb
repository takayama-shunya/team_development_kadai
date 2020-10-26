class DeleteMailer < ApplicationMailer
  default to: -> { @agenda.team.users.pluck(:email) },
          from: 'from@example.com'

  def delete_agenda_mail(agenda)
    @agenda = agenda
    mail(subject: "アジェンダ削除")
  end
end

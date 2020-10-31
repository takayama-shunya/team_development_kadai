class ChengeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'

  def chenge_owner_mail(owner, user)
    @user = owner
    @current_user = user
    mail to: @user.email, subject: "チームリーダー変更しました"
  end
end

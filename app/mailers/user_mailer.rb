class UserMailer < ActionMailer::Base
  #default from: ENV["GMAIL_USERNAME"]
  default from: "marge@margerosen.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.helpdesk_mailer.ticket_confirmation.subject
  #
  def user_confirmation(user)
    @user = user
    @url = "http://floating-river-5572.herokuapp.com"
    @mail_to = "margerosen1@gmail.com"
    mail(to: @mail_to, subject: @user.id.to_s + "-" + @user.name.to_s,
          ) #, reply_to: "4cbcd1717700ab15df8c@cloudmailin.net"
  end
end

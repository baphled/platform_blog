class NewsletterMailer < ApplicationMailer
  def notification user, article
    @user = user
    @article  = article

    mail(to: @user.email, subject: 'A new article has been published') 
  end
end

class NewsletterController < ApplicationController
  def subscribe
    params.permit!

    @newsletter = Newsletter.new email: params[:email]
    if @newsletter.save
      flash[:success] = 'Successfully subscribed'
      redirect_to :root
    else
      flash[:error] = 'Unable to subscribed'
      redirect_to :root
    end
  end

  def unsubscribe
    @newsletter = Newsletter.find_by_email(params[:email])

    if @newsletter.present? and @newsletter.delete
      flash[:success] = 'Successfully subscribed'
    else
      flash[:error] = 'Email address not found'
    end
    redirect_to :root
  end
end

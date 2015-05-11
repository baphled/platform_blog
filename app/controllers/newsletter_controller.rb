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
end

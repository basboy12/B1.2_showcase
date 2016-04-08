class HomeController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :DESC)
    # @projects = Project.all.order(created_at: :DESC)
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message, please try again'
      render :index
    end
  end

end

class PageSaverController < ApplicationController
  def index
  end

  def create
    # creates a new page saver job and redirects the user back to the main page so they can
    # enter another page url
    url = params[:url_to_save]
    message = "Page save job for #{url} started."
    SavePageJob.perform_later(url)
    redirect_to({ :action => 'index' }, flash: { :notice => message})
  end
end

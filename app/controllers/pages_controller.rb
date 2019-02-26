class PagesController < ApplicationController
  def index
    #view all pages
    @pages = Page.all # SELET * FROM Page
  end

  def show
    #view a single page
    @page = Page.find(params[:id])
  end

  def new
    # Page.create #in database
    
    # create a new instance
    @page = Page.new #in memory
  end
end

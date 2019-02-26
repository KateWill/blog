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

  def create
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
    #renders the form only
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find (params[:id])
    if @page.update(pages_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  def destroy
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end


  private
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end
    # {page: {title: 'foo', author: 'me', body: 'this'}}
    # {title: 'foo', author: 'me', body: 'this'}
    # Page.new({title: 'foo', author: 'me', body: 'this'})

end

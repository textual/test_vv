class AlbumsController < ApplicationController
  def index
    @albums = Albums.all
  end
  
  def show
    @albums = Albums.find(params[:id])
  end
  
  def new
    @albums = Albums.new
  end
  
  def create
    @albums = Albums.new(params[:albums])
    if @albums.save
      flash[:notice] = "Successfully created albums."
      redirect_to @albums
    else
      render :action => 'new'
    end
  end
  
  def edit
    @albums = Albums.find(params[:id])
  end
  
  def update
    @albums = Albums.find(params[:id])
    if @albums.update_attributes(params[:albums])
      flash[:notice] = "Successfully updated albums."
      redirect_to @albums
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @albums = Albums.find(params[:id])
    @albums.destroy
    flash[:notice] = "Successfully destroyed albums."
    redirect_to albums_url
  end
end

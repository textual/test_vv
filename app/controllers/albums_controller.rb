class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  
  def show
    @albums = Album.find(params[:id])
  end
  
  def new
    @albums = Album.new
  end
  
  def create
    @albums = Album.new(params[:albums])
    if @albums.save
      flash[:notice] = "Successfully created albums."
      redirect_to @albums
    else
      render :action => 'new'
    end
  end
  
  def edit
    @albums = Album.find(params[:id])
  end
  
  def update
    @albums = Album.find(params[:id])
    if @albums.update_attributes(params[:albums])
      flash[:notice] = "Successfully updated albums."
      redirect_to @albums
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @albums = Album.find(params[:id])
    @albums.destroy
    flash[:notice] = "Successfully destroyed albums."
    redirect_to albums_url
  end
end

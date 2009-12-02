class ArtistsController < ApplicationController
  def index
    @artists = Artist.find :all
  end
  
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      flash[:notice] = "Successfully created artist."
      redirect_to @artist
    else
      render :action => 'new'
    end
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      flash[:notice] = "Successfully updated artist."
      redirect_to @artist
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Successfully destroyed artist."
    redirect_to artists_url
  end
end

class AlbumsController < ApplicationController

    def index
        @albums = Album.all
    end

    def show
      @album_item = Album.find(params[:id])
    end

    def new
        @album_item = Album.new
    end

    def create
        @album = Album.new(params.require(:album).permit(:title, :body))
        respond_to do |format|
      if @album.save
        format.html { redirect_to albums_path, notice: 'Your Album is live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
   @album_item = Album.find(params[:id])
  end 

  def update
    @album_item = Album.find(params[:id])
    respond_to do |format|
      if @album_item.update(params.require(:album).permit(:title, :body))
        format.html { redirect_to albums_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @album_item = Album.find(params[:id])
    @album_item.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album destroyed.' }
    end
  end
end

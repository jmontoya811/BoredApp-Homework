class AlbumsController < ApplicationController

    def index
        @albums = Album.all
    end

    def show
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
end

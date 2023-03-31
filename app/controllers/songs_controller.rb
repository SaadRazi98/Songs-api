class SongsController < ApplicationController

  def index
    @songs = Song.all 
    render :index 
  end

  def create
    @song = Song.create(
      title: params[:title]
      artist: params[:artist]
      year: params[:year]
    )
    render :show
  end 

end

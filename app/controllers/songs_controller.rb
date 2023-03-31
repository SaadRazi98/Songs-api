class SongsController < ApplicationController

  def index
    @songs = Song.all 
    render :index 
  end

  def create
    @song = Song.create(
      title: params[:title],
      artist: params[:artist],
      year: params[:year],
    )
    render :show
  end 

  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end 

  def update
    @psong = Song.find_by(id: params[:id])
    @song.update(
      title: params[:title] || @song.title,
      artist: params[:artist] || @song.artist,
      year: params[:year] || @song.year,
    )
    render :show
  end

end

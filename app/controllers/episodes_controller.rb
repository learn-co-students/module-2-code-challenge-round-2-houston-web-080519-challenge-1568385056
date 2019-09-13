class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @guests = Guest.all
    @episode = Episode.find(params[:id])
  end

  def new

  end

  def create
    Episode.create({
      date: params[:date],
      number: params[:number]
    })
    redirect_to "/episodes"
  end
  


end

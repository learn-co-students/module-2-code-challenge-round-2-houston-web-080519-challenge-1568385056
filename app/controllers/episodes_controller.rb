class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    #byebug
    @episode = Episode.find(params[:id])
  end
end

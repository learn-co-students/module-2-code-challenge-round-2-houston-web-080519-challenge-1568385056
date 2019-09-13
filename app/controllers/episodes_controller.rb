class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find_by_id(params[:id])
  end

  def new

  end

  def create
    
  end
end

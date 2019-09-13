class AppearancesController < ApplicationController

    def index

    end

    def new
      @appearance = Appearance.new
      @episodes = Episode.all
      @guests = Guest.all
    end

    def create
    Appearance.create({
        guest_id: params[:guest_id],
        episode_id: params[:episode_id],
        rating: params[:rating]
        })
        episodesID = params[:episode_id]
     redirect_to "/episodes/#{episodesID}"
     
  
    end
  end